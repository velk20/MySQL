SELECT deposit_group, max(magic_wand_size) as `longest_magic_wand` from wizzard_deposits
group by deposit_group
order by `longest_magic_wand` , deposit_group