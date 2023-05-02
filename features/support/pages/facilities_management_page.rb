module Pages
  class SummarySection < SitePrism::Section
    elements :selection, 'details > div > ul > li'
    element :change, 'a'
  end

  class FacilitiesManagement < SitePrism::Page
    section :buyer_details, '#main-content' do
      element :Name, '#facilities_management_buyer_detail_full_name'
      element :'Job title', '#facilities_management_buyer_detail_job_title'
      element :'Telephone number', '#facilities_management_buyer_detail_telephone_number'
      element :'Organisation name', '#facilities_management_buyer_detail_organisation_name'
      element :'Organisation address', '#address-text'

      section :sector, '#sector-form-group' do
        element :'Defence and Security', '#facilities_management_buyer_detail_sector_defence_and_security'
        element :Health, '#facilities_management_buyer_detail_sector_health'
        element :'Government Policy', '#facilities_management_buyer_detail_sector_government_policy'
        element :'Local Community and Housing', '#facilities_management_buyer_detail_sector_local_community_and_housing'
        element :Infrastructure, '#facilities_management_buyer_detail_sector_infrastructure'
        element :Education, '#facilities_management_buyer_detail_sector_education'
        element :'Culture, Media and Sport', '#facilities_management_buyer_detail_sector_culture_media_and_sport'
      end

      section :contact_opt_in, '#contact_opt_in-form-group' do
        element :Yes, '#facilities_management_buyer_detail_contact_opt_in_true'
        element :No, '#facilities_management_buyer_detail_contact_opt_in_false'
      end

      element :postcode_error_message, '#organisation_address_postcode-error'
      element :address_drop_down, '#address-results-container'
      element :change_address, '#change-input-2'
    end

    section :quick_view, '#main-content' do
      section :basket, '.basket' do
        elements :selection, 'ul > li > div:nth-of-type(2)'
        element :selection_count, 'h3'
        element :remove_all, 'a[aria-label="Remove all"]'
      end

      element :annual_contract_value, '#annual_contract_value'
      element :sub_lot, '#procurement-sub-lot'

      section :selection_summary, 'div:nth-child(3) > div.govuk-grid-column-one-third' do
        section :services, SummarySection, 'div.ccs-summary-box:nth-of-type(1)'
        section :regions, SummarySection, 'div.ccs-summary-box:nth-of-type(2)'

        section :'annual contract cost', 'div.ccs-summary-box:nth-of-type(3)' do
          element :selection, '.ccs-summary-box__content'
          element :change, 'a'
        end
      end

      element :contract_name_field, '#facilities_management_rm6232_procurement_contract_name'
      elements :suppliers, 'div:nth-child(3) > div.govuk-grid-column-two-thirds > ul > li'
    end

    section :service_specification, '#main-content' do
      element :sub_title, 'div.govuk-clearfix > div:nth-child(1) > div > span'
      element :service_name_and_code, 'h2'
    end

    section :procurement, '#main-content' do
      elements :procurement_names, 'div.govuk-grid-row > div > div > table > tbody > tr'
    end
  end
end
