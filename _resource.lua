-- __resource.lua

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

this_is_a_map 'yes'

files {
    'interiors.meta',
    'other_files.meta',
}

data_file 'DLC_ITYP_REQUEST' 'stream/interiors.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/other_files.ytyp'

client_scripts {
    'club_safe.lua',
    'club_security.lua',
    'club_commands.lua',
    'hybrid_drug_lab.lua',
    'hybrid_drug_lab_production.lua',
    'hybrid_drug_lab_security.lua',
    'gang_outfit_variants.lua',
    'enhanced_vehicle_spotlight.lua',
    'ems_uniform_modern.lua',
    'advanced_mlo.lua',
    'advanced_mlo_resource.lua'
}
