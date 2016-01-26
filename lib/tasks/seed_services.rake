task :gen_services do

    task gen_services: :environment do 

    services = {
      "Plastic Oil Tanks - Domestic" => {
        body: "<p>TRS are the region's leading supplier of domestic plastic oil tanks, delivering to Norfolk, Suffolk, Cambridgeshire and Essex. We have a wide range of plastic oil tanks at very competitive prices in stock ready for delivery. We also offer a comprehensive and&nbsp;professional oil tank installation service.</p><p>If you are considering a new oil tank, please feel free to give us a call. We have over 50 years experience in the oil industry and we are always very happy to give free and friendly advice over the phone.&nbsp;We can help you choose the right style, make and size of tank for your exact needs. We can also give you a free, no-obligation estimate for the purchase and installation of the tank.</p><p>Our oil tank installation service is second to none. We will deliver and install your new oil tank at a time that is convenient for you. Installation is undertaken by our own employed, fully trained and OFTEC accredited engineers. As a matter of course we will be happy to transfer any existing oil from your old tank to your new tank, and we will take away your old tank for safe disposal.</p><p>We are a long established family-run business with an excellent reputation for customer care, so you can be assured of an excellent service before, during and after your purchase.</p><p>For friendly sevice and a free estimate please call 01362 687 144 or click here to request a call back</p>",
        banner: File.open(File.join(Rails.root, "seed_images/header_image_placeholder.jpg"))
      },




    }

    services.each do |k, v|
      Service.create!(v.merge(name: k))
    end
  
end

end