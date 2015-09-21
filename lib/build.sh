build_application() {
  local build_dir=${1:-}

  if [ -e $build_dir/package.json ]; then
    cd $build_dir
    echo "Running npm run-script build"
    npm run-script build 2>&1
  else
    echo "Skipping (no package.json)"
  fi
}