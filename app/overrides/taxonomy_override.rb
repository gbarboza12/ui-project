Deface::Override.new(:virtual_path  => "spree/shared/_taxonomies",
            :insert_before => "h4.taxonomy-root",
            :name          => "taxonomy_hide_category") do
                "<% if taxonomy.name == 'Computers & Tablets' then next end %>"
              end
