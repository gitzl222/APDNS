input_dir=$1
barcode_kits=$2

guppy_barcoder -i ${input_dir} -s trimed --trim_barcodes --barcode_kits ${barcode_kits}
