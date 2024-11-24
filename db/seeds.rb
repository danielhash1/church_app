# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Post.destroy_all
Ministry.destroy_all
posts = [
  { title: 'New Health Guidelines', image_url: 'https://www.statnews.com/wp-content/uploads/2022/03/AdobeStock_246942922.jpeg', description: ' Details about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of HealthDetails about the new health guidelines issued by the Ministry of Health' },
  { title: 'Education Reform Plan', image_url: 'https://www.teachhub.com/wp-content/uploads/2020/05/Top-12-Pioneers-in-Education-scaled.jpg', description: 'Overview of the new education reform plan' },
  { title: 'Defense Budget Update', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ2jzRNqu_k3m0nIpm5rTLUMHFqsZmQrGiqQ&s', description: 'Latest updates on the defense budget' }
]

posts.each do |post|
  Post.create!(post)
end

puts "#{posts.length} posts loaded successfully."

# Create some ministries
ministries = [
  {
    name: 'Sermons',
    description: 'የቤተ ክርስቲያናችን የእሁድ መደበኛ ፕሮግራም የሰዓት ድልድል፦
     የጸሎት ጊዜ 14:00-14:30
     የመዝሙር (አምልኮ) ጊዜ 14:30-15:15
     የልጆች መዝሙር ጊዜ 15:15-15:30
     የቃል ትምህርትና ስብከት ጊዜ 15:30-16:30
     የሻይና ቡና ጊዜ 16:30-17:30',
    
  },
  {
    name: 'Bible Study Groups',
    description: 'መጽሐፍ ቅዱስ ሕያው እና ሥልጣን ያለው የእግዚአብሔር ቃል ነው። በክርስትና ሕይወታችን ውስጥ በቃሉ እውነት ላይ
      የተመሠረተ ጠንካራ እድገት ለማግኘት ከሁሉ የተሻለው መንገድ በጋራ መጽሐፍ ቅዱስ ጥናት ውስጥ መካፈል ነው። ለዚህ
      እንዲመች መጽሐፍ ቅዱስን በጋራ የሚያጠኑ አነስተኛ ቁጥር ያላቸው ቡድኖች አሉን። እነዚህ ትናንሽ፣ የበለጠ ቅርበት
      ያላቸው ቡድኖች የአዲስ ኪዳንን “ኅብረት” ማግኘት የምትችሉበትን እድል ይሰጣሉ። ማለትም በኢየሱስ ክርስቶስ የጋራ
      ሕይወታችንን መካፈል ነው። በዚህም መሰረት ለጊዘው ሁለት መርሀ ግብሮች አሉን፡፡ አንደኛው የአጋፔ የመጽሐፍ ቅዱስ
      ጥናት ቡድን ሲሆን ሁለተኛው የቤርያ የመጽሐፍ ቅዱስ ጥናት ነው፡፡ የመጀመርያው ዘወትር ማከሰኞ ከ 18፡30 ጀምሮ
      የሚካሄድ ሲሆን ሁለተኛው ዘወትር ሀሙስ ከ 18፡00 ጀምሮ ይካሄዳል፡፡
      እርስዎም ምቹ የሆነውን ቡድን በመቀላቀል የእግዚአብሔርን ቃል ከኛ ጋር እንዲያጠኑ ተጋብዘዋል፡፡',
   
  },
  {
    name: 'Daily Bible Reading',
    description: 'በየዕለቱ ከእግዚአብሔር ቃል ጋር፦ በዓመት አንድ ጊዜ ሙሉውን መጽሐፍ ቅዱስ ለመጨረስ የሚያስችል መርሃ ግብር
      “የእግዚአብሔር ሰው ፍጹምና ለበጎ ሥራ ሁሉ የተዘጋጀ ይሆን ዘንድ፥ የእግዚአብሔር መንፈስ ያለበት መጽሐፍ ሁሉ ለትምህርትና
      ለተግሣጽ ልብንም ለማቅናት በጽድቅም ላለው ምክር ደግሞ ይጠቅማል” (2ጢሞቴዎስ 3፡17)። የእስራኤልን ሕዝብ እየመራ
      ከግብጽ ባርነት ነጻ እንዲያወጣቸው እግዚአብሔር የሾመው ሙሴ ከሞተ በኋላ እግዚአብሔር ኢያሱ በቀጣይነት እንዲመራ
      ሲያሰማራው የሰጠው መመሪያ በቃሉ እንዲተጋና ይህ ሲሆን በሁሉ እንደሚከናወለለት ገልጾለት ነበር፦  “የዚህ ሕግ መጽሐፍ
      ከአፍህ አይለይ፥ ነገር ግን የተጻፈበትን ሁሉ ትጠብቅና ታደርግ ዘንድ በቀንም በለሊትም አስበው፤ የዚያን ጊዜም መንገድህ
      ይቀናልሃል ይከናወንልሃልም” (ኢያሱ 1፡8)።
      ስለዚህ ቤተ ክርስቲያናችን ለእግዚአብሔር ቃል (መጽሐፍ ቅዱስ) ልዩ ትኩረት ትሰጣለች። ሰው በሕይወቱ ለማደግና
      የእግዚአብሔርን ሃሳብ ተረድቶ ለማገልገል እንዲሁም በኑሮው የሚነሱትን ተግዳሮቶች ለመቋቋም በጸሎት እየተጋ ቃሉን በየዕለቱ
      ሊመገብ ይገባል፣ መጽሐፍ ቅዱስን በትጋት ማንበብ አለበት ብላ ታምናለች። 
      ለዚህ አንዲያግዝ መጽሐፍ ቅዱስን በየዕለቱ በማንበብ በዓመት አንድ ጊዜ ለመጨረስ የሚያስችል መርሃ ግብር አዘጋጅታ ተግባራዊ
      በማድረግ ላይ ትገኛለች። በየዕለቱ የሚነበበው የመጽሐፍ ቅዱስ ክፍል (መጽሐፉና ምዕራፎቹ) ተለይተው ተቀምጠዋል። ማንበብ
      ለማይችሉና ቃሉን ካነበቡ በኋላ ለማስታወስ ተጨማሪ እገዛ ለሚፈልጉ እንዲያገለግል በማሰብ የየዕለቱ ምንባብ በድምጽም
      ጭምር በማህበራዊ ሚዲያ (በአሁኑ ጊዜ “ቃሉን ማንበብ Reading the Bible” በሚለው WhatsApp Group) ላይ
      እንዲቀመጥ ተደርጓል።
      ለበለጠ መረጃ እባክዎን ያነጋግሩን።',
    
  },
  {
    name: 'Children and Youth Ministry ',
    description: 'የህፃናት እና ወጣቶች አገልግሎት ለህፃናት እና ወጣቶች ከሳምንቱ መደበኛ የአምልኮ ፕሮግራማችን ጋር በተመሳሳይ ሰዓት
  ይሰጣል። በተለያዩ የአካል፣ የአዕምሮ፣ ማህበራዊ እና መንፈሳዊ የዕድገት ደረጃዎች ላይ ያሉትን ህጻናት እና ወጣቶች
  በሚያሳትፍ መንገድ በእግዝያብሄር ቃል እንዲያድጉ የሚያግዝ ትምህርታዊ አገልግሎት ይሰጣል። የዚህ ሚንስትሪ
  ተልእኮ ልጆችን እና ወጣቶችን ወደ ኢየሱስ ክርስቶስ በመምራት ክርስቶስን ወደምመስል ህይውት ማሳደግ ነው፡፡ ለበለጠ
  መረጃ እባክዎን ያነጋግሩን።',
   
  },
  {
    name: 'Women’s Ministry',
    description: 'የኢትዮጵያ ወንጌላዊት ቤተ ክርስቲያን ቦን የእህቶች ህብረት አገልግሎት ካሉን ጠንካራ ህብረቶች ውስጥ አንዱ ነው፡፡ 
      የህብረቱ አላማ:- 
       ሴቶች እግዚአብሔር የሰጣቸውን ፀጋ እና ችሎታ በማወቅ እንዲጠቀሙና ለቤተ ክርስቲያን  አልፎም ለምድር በረከት
      እንዲሆኑ  መርዳት ነው፡፡
        በተጨማሪም እኅቶች በሁሉም አቅጣጫ ዉጤታማ እንዲሆኑ ማገዝ ነው :: 
      የእህቶች ህብረት የፕሮግራሞቹ ይዘት :-
       የመፅሐፍ ቅዱስ ጥናት (እህቶችን መሰረት ያደረገ ጥናት )---&gt; ሰኞ ከ ከ21: 00 - 22:00 በ online What&#39;sApp
      group 

        ጸሎት---&gt;  ቅዳሜ ከ21:00 እስከ 22፡00 (በ online| What&#39;sApp group)
        በየወሩ መጨረሻ ቅዳሜ ከ 16:00 - 18:00 በአካል በመገናኘት የቤት ለቤት የመፅሐፍ ቅዱስ ጥናት እና እርስ በርስ
      የመተናነፅ ጊዜ 
        አመታዊ የእኅቶች ኮንፍራንስ 
        ልዩ ልዩ የአንድነት እና የፍቅር ጊዜ (ግሪል, የጋራ ጉዞ....)
      በተጨማሪም የህይወት ተሞክሮዎቻቸውን ይከፋፈላሉ፤ ጌታ በህይወታቸው ያደረገውን ይመሰክራሉ። በዚህም እርስ በእርሳቸው
      ይተናነጻሉ።
      የሴቶች ህብረት አገልግሎት በሁሉም እድሜ ያሉትን ሴቶች ያማከለ የጸሎት እና የመፅሐፍ ቅዱስ ጥናት የያዘ በመሆኑ ካሉበት ቦታ
      ሆነው ይቀላቀሉን፡፡',
   
  },
  {
    name: 'Prayer Groups',
    description: 'የኢትዮጵያ ወንጌላዊት ቤተ ክርስቲያን ቦን አገልግሎት ቀጣይነት ያለው የጸሎት አገልግሎት አለው። እግዚአብሔር ለጸሎት ምላሽ
  እንደሚሰጥ ታምናለች፡፡ በቤተ ክርስቲያናችን ውስጥ የጸሎት ቡድን አባል ለመሆን ብዙ እድሎች አሉ :: የጾምና ጸሎት ጊዜ በየወሩ
  የመጀመርያው አርብ ከቀኑ 11፡00 ጀምሮ የሚካሄድ ሲሆን የአዳር ጸሎትም በዛው ቀን የወሩ የመጀመርያው አርብ ከ20፡00
  ሰአት ጀምሮ በጸሎት ህብረት አስተባባሪ የተመደበ ሰው የዕለቱን ጸሎት ይመራዋል:: ሁሉም ምዕመናን በያሉበት የሚሳተፉበት
  የሰንሰለት ጾምና ጸሎት ያለን ሲሆን የጸሎት ርዕስ ደግሞ በጸሎት ህብረት አስተባባሪ እየተዘጋጀ በቤተ ክርስቲያን ማስታወቂያ
  ይነገራል:: ለበለጠ መረጃ እባክዎን ያነጋግሩን።',
   
  },
  {
    name: 'Worship, Art and Drama Ministry',
    description: 'የመዝሙር ፤ ሥነ/ጽሑፍ እና ድራማ አገልግሎት ሥር የኳየርና የሥነ ጽሑፍ ዘርፎች አሉ::
የመዝሙር ፤ ሥነጽሑፍ እና ድራማ አገልግሎት ዓላማው ቅዱሳን ክርስቶስን በነገር ሁሉ በዜማና በመዝሙር እንዲያመልኩ
ለመርዳት ነው። አምልኮ ወሰን የሌለውን የእግዚአብሔርን ዋጋ የሚገልጹትን ሁሉንም የልብ፣ የአዕምሮ እና የአካል ስራዎች
ለመሸፈን የምንጠቀምበት ቃል ነው። የድራማ አገልግሎታችን ዓላማ ክርስቲያናዊ ጭብጦችን እና የመጽሐፍ ቅዱስ ታሪኮችን
በመድረክ ላይ በመንፈሳዊ፣ በተጨባጭ እና ሙያዊ በሆነ መንገድ ማሳየት ነው።',
   
  },
  {
    name: 'Social and Compassion Ministry',
    description: 'ማህበራዊ እና ሁለንተናዊ ሚኒስትሪ አግልግሎት በኢትዮጵያ እና በጀርመን ያሉት ክርስትያኖች እንዲሁም ክርስትያን ያልሆኑት
ማህበራዊ እና ኢኮኖሚያዊ ፍላጎታቸውን እንዲያሟሉ ለመርዳት ነው። ሁለንተናዊ አግልግሎት የእግዚአብሔርን መንግሥት
የምሥራች ለሰው ሁሉ ለማድረስ ያለመ ነው። የእግዚአብሄርን ፍቅር በተግባር ማሳያ መንገድ አንዱ ነው ብላ ታምናለች፡፡',
  
  },

  {
    name: 'Elders',
    description: 'ቤተ ክርስቲያኗ የምትመራው በሽማግሌዎች ጉባኤ ነው፡፡ የሽማግሌዎች ጉባኤ እግዚአብሔርንና ምዕመናንን በመወከል ባለ አደራ
ሆኖ የእግዚአብሔርን ሕዝብ ያስተዳድራል:፡ በየ 3 አመቱ የምመረጡ ስሆን፡ በአሁኑ ወቅት ሽማግሌዎች፦
(1) ዶ/ር ግርማ ቀልቦሮ

(2) ዶ/ር ተካልኝ ጉቱ',
    
  },

  {
    name: 'Media Ministry',
    description: 'የሚድያ ሚንስትሪ አገልግሎት በአንድ ቤተ ክርስቲያን ውስጥ ያለው ሚና ከፍተኛ ነው፡፡ በተለይ የቤተ ክርስትያንን ወንጌልን የማስፋፋት
ተልእኮዋን በመደገፍ እና በማጉላት ረገድ ከፍተኛ ድርሻ አለው። በዚህ በዲጂታል ዘመን የሚድያ አግልግሎት የቤተክርስቲያንን መልእክት
ተደራሽነት ለማስፋት ጠቃሚ መሣሪያ ሆኖ ያገለግላል፣ ለዚህም ቤተ ክርስቲያናችን ልዩ ትኩረት ሰጥታ ትሰራለች፡፡
ቤተ ክርስቲያናችን ብዙ ሰዎችን ለመድረስ፣ የአምልኮ ልምዶችን ለማጎልበት እና የቤተክርስቲያንን መልእክት ለውስጥ አባላትም ሆነ
ለሰፊው ህዝብ ለማስተላለፍ የተለያዩ ሚዲያ መድረኮችን - እንደ ማህበራዊ ሚዲያ፣ የቀጥታ ስርጭት፣ የኦዲዮ ቪዥዋል ፕሮዳክሽን እና
የታተሙ ቁሳቁሶችን ትጠቀማለች።

የሚድያ ሚኒስትርሪ ዓላማ የቤተ ክርስቲያናችን መልእክት ከደጃፋችን አልፎ ለብዙ ታዳሚዎች እንዲደርስ ማስቻል ነው።
ሚኒስትሪው በተለያዩ የሚዲያ መድረኮችን (ማህበራዊ ሚዲያ፣ ፖድካስቶች፣ የቀጥታ ስርጭቶች፣ ድረ-ገጾች፣ ወዘተ.)
በመጥቀም ወንጌልን ማሰራጨት ነው፡፡.',
    
  },
]


ministries.each do |ministry|
  Ministry.create!(ministry)
end

puts "#{ministries.length} Ministries loaded successfully."