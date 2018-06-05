var gulp = require('gulp'),
    sass = require('gulp-sass'),
    uglify = require('gulp-uglify'),
    uglifycss = require('gulp-uglifycss'),
    concat = require('gulp-concat'),
    plumber = require('gulp-plumber'),
    minify = require('gulp-minify');

gulp.task('app-sass', function () {
    gulp.src([
        'resources/sass/style.scss'
    ])
        .pipe(plumber())
        .pipe(sass({ outputStyle: 'compressed' })) /* expanded */
        //.pipe(minify())
        /*    .pipe(uglifycss())*/
        .pipe(gulp.dest(''))
});

gulp.task('app-js', function () {
    gulp.src([
        'resources/js/partials/*.js'
    ])
        .pipe(plumber())
        .pipe(concat('app.js'))
        /*.pipe(uglify())*/
        .pipe(minify())
        .pipe(gulp.dest('resources/js/'))
});

gulp.task('watch', function () {
    gulp.watch([
        'resources/sass/style.scss',
        'resources/sass/*/*.scss'
    ], ['app-sass']);
    gulp.watch([
        'resources/js/*/*.js'
    ], ['app-js']);
});

gulp.task('default', [
    'app-sass',
    'app-js',
    'watch'
]);