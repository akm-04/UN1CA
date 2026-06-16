# Reduce size from system partition
echo "- Debloating System Partition"
SYSTEM_BLOBS="
system/priv-app/OneDrive_Samsung_v3
"
for blob in $SYSTEM_BLOBS
do
    DELETE_FROM_WORK_DIR "system" "$blob"
done

# reduce size from product partition
echo "- Debloating Product Partition"
PRODUCT_BLOBS="
app/YouTube
app/Maps
"
for blob in $PRODUCT_BLOBS
do
    DELETE_FROM_WORK_DIR "product" "$blob"
done
