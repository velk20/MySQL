SELECT deposit_group, magic_wand_creator, min(deposit_charge) as `min_deposit_charge` FROM gringotts.wizzard_deposits
group by deposit_group, magic_wand_creator
order by magic_wand_creator,deposit_group