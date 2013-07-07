# Ensure file contents are using the name defined in package.json.
# https://github.com/yoniholmes/grunt-text-replace

module.exports = (grunt) ->

  grunt.util.toCamel = (str) ->
    str.replace /((^|\-)[a-z])/g, ($1) -> $1.toUpperCase().replace('-','')

  grunt.config.data.replace =
    dashed_paths:
      overwrite   : true
      replacements: [ from: /cta/g, to: "<%= pkg.name %>" ]
      src         : replace_paths = [
        "bin/*"
        "Gruntfile.coffee"
        "package.json"
        "README.md"
        "src/**/*.coffee"
        "tasks/**/*.coffee"
        "test/**/*.coffee"
        "test/**/*.js"
      ]
    class_variables:
      overwrite   : true
      replacements: [ from: /Cta/g, to: "<%= grunt.util.toCamel(pkg.name) %>" ]
      src         : replace_paths
    instance_variables:
      overwrite   : true
      replacements: [ from: /cta/g, to: "<%= pkg.name.replace('-', '_') %>" ]
      src         : replace_paths

  grunt.loadNpmTasks "grunt-text-replace"