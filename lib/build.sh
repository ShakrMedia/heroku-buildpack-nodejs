build_application() {
  local build_dir=${1:-}

  if [ -e $build_dir/package.json ]; then
    cd $build_dir
    echo "Building application"
    npm run-script build 2>&1
  else
    echo "Skipping (no package.json)"
  fi
}