function maior() {
  maior=0
  num=$(cat $1)
  for i in $num; do
    if (( $i > $maior )); then
      maior=$i
    fi
  done
  echo "O maior número é $maior"
}

function menor() {
  menor=0
  num=$(cat $1)
  for i in $num; do
    if (( $i < $menor )); then
      menor=$i
    fi
  done
  echo "O menor número é $menor"
}