create_dataset() {
    local dataset_name="$1"
    local dataset_path="POOLNAME/$dataset_name"
    local mountpoint="/mnt/$dataset_path"

    if ! zfs list "$dataset_path" >/dev/null 2>&1; then
        echo "Creating dataset: $dataset_path"
        zfs create "$dataset_path"
    fi

    # Ensure dataset is mounted
    if ! mountpoint -q "$mountpoint"; then
        echo "Mounting dataset: $dataset_path"
        zfs mount "$dataset_path"
    fi

    # Verify mount exists before applying permissions
    if [ -d "$mountpoint" ]; then
        chown apps:apps "$mountpoint"
        chmod 770 "$mountpoint"
    else
        echo "⚠️ Warning: $mountpoint does not exist after mounting. Check dataset status."
    fi
}
