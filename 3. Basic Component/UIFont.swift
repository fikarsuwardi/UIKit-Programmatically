//
//  FontList.swift
//  BasicComponentProgramatically
//
//  Created by Zulfikar Abdul Rahman Suwardi on 27/09/22.
//

import UIKit

class FontList: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    for family in UIFont.familyNames.sorted() {
      let names = UIFont.fontNames(forFamilyName: family)
      print("Family: \(family) Font names: \(names)")
    } 
  }  
}

// List All Font
Family: Academy Engraved LET Font names: ["AcademyEngravedLetPlain"]
Family: Al Nile Font names: ["AlNile", "AlNile-Bold"]
Family: American Typewriter Font names: ["AmericanTypewriter", "AmericanTypewriter-Light", "AmericanTypewriter-Semibold", "AmericanTypewriter-Bold", "AmericanTypewriter-Condensed", "AmericanTypewriter-CondensedLight", "AmericanTypewriter-CondensedBold"]
Family: Apple Color Emoji Font names: ["AppleColorEmoji"]
Family: Apple SD Gothic Neo Font names: ["AppleSDGothicNeo-Regular", "AppleSDGothicNeo-Thin", "AppleSDGothicNeo-UltraLight", "AppleSDGothicNeo-Light", "AppleSDGothicNeo-Medium", "AppleSDGothicNeo-SemiBold", "AppleSDGothicNeo-Bold"]
Family: Apple Symbols Font names: ["AppleSymbols"]
Family: Arial Font names: ["ArialMT", "Arial-ItalicMT", "Arial-BoldMT", "Arial-BoldItalicMT"]
Family: Arial Hebrew Font names: ["ArialHebrew", "ArialHebrew-Light", "ArialHebrew-Bold"]
Family: Arial Rounded MT Bold Font names: ["ArialRoundedMTBold"]
Family: Avenir Font names: ["Avenir-Book", "Avenir-Roman", "Avenir-BookOblique", "Avenir-Oblique", "Avenir-Light", "Avenir-LightOblique", "Avenir-Medium", "Avenir-MediumOblique", "Avenir-Heavy", "Avenir-HeavyOblique", "Avenir-Black", "Avenir-BlackOblique"]
Family: Avenir Next Font names: ["AvenirNext-Regular", "AvenirNext-Italic", "AvenirNext-UltraLight", "AvenirNext-UltraLightItalic", "AvenirNext-Medium", "AvenirNext-MediumItalic", "AvenirNext-DemiBold", "AvenirNext-DemiBoldItalic", "AvenirNext-Bold", "AvenirNext-BoldItalic", "AvenirNext-Heavy", "AvenirNext-HeavyItalic"]
Family: Avenir Next Condensed Font names: ["AvenirNextCondensed-Regular", "AvenirNextCondensed-Italic", "AvenirNextCondensed-UltraLight", "AvenirNextCondensed-UltraLightItalic", "AvenirNextCondensed-Medium", "AvenirNextCondensed-MediumItalic", "AvenirNextCondensed-DemiBold", "AvenirNextCondensed-DemiBoldItalic", "AvenirNextCondensed-Bold", "AvenirNextCondensed-BoldItalic", "AvenirNextCondensed-Heavy", "AvenirNextCondensed-HeavyItalic"]
Family: Baskerville Font names: ["Baskerville", "Baskerville-Italic", "Baskerville-SemiBold", "Baskerville-SemiBoldItalic", "Baskerville-Bold", "Baskerville-BoldItalic"]
Family: Bodoni 72 Font names: ["BodoniSvtyTwoITCTT-Book", "BodoniSvtyTwoITCTT-BookIta", "BodoniSvtyTwoITCTT-Bold"]
Family: Bodoni 72 Oldstyle Font names: ["BodoniSvtyTwoOSITCTT-Book", "BodoniSvtyTwoOSITCTT-BookIt", "BodoniSvtyTwoOSITCTT-Bold"]
Family: Bodoni 72 Smallcaps Font names: ["BodoniSvtyTwoSCITCTT-Book"]
Family: Bodoni Ornaments Font names: ["BodoniOrnamentsITCTT"]
Family: Bradley Hand Font names: ["BradleyHandITCTT-Bold"]
Family: Chalkboard SE Font names: ["ChalkboardSE-Regular", "ChalkboardSE-Light", "ChalkboardSE-Bold"]
Family: Chalkduster Font names: ["Chalkduster"]
Family: Charter Font names: ["Charter-Roman", "Charter-Italic", "Charter-Bold", "Charter-BoldItalic", "Charter-Black", "Charter-BlackItalic"]
Family: Cochin Font names: ["Cochin", "Cochin-Italic", "Cochin-Bold", "Cochin-BoldItalic"]
Family: Copperplate Font names: ["Copperplate", "Copperplate-Light", "Copperplate-Bold"]
Family: Courier New Font names: ["CourierNewPSMT", "CourierNewPS-ItalicMT", "CourierNewPS-BoldMT", "CourierNewPS-BoldItalicMT"]
Family: DIN Alternate Font names: ["DINAlternate-Bold"]
Family: DIN Condensed Font names: ["DINCondensed-Bold"]
Family: Damascus Font names: ["Damascus", "DamascusLight", "DamascusMedium", "DamascusSemiBold", "DamascusBold"]
Family: Devanagari Sangam MN Font names: ["DevanagariSangamMN", "DevanagariSangamMN-Bold"]
Family: Didot Font names: ["Didot", "Didot-Italic", "Didot-Bold"]
Family: Euphemia UCAS Font names: ["EuphemiaUCAS", "EuphemiaUCAS-Italic", "EuphemiaUCAS-Bold"]
Family: Farah Font names: ["Farah"]
Family: Futura Font names: ["Futura-Medium", "Futura-MediumItalic", "Futura-Bold", "Futura-CondensedMedium", "Futura-CondensedExtraBold"]
Family: Galvji Font names: ["Galvji", "Galvji-Bold"]
Family: Geeza Pro Font names: ["GeezaPro", "GeezaPro-Bold"]
Family: Georgia Font names: ["Georgia", "Georgia-Italic", "Georgia-Bold", "Georgia-BoldItalic"]
Family: Gill Sans Font names: ["GillSans", "GillSans-Italic", "GillSans-Light", "GillSans-LightItalic", "GillSans-SemiBold", "GillSans-SemiBoldItalic", "GillSans-Bold", "GillSans-BoldItalic", "GillSans-UltraBold"]
Family: Grantha Sangam MN Font names: ["GranthaSangamMN-Regular", "GranthaSangamMN-Bold"]
Family: Helvetica Font names: ["Helvetica", "Helvetica-Oblique", "Helvetica-Light", "Helvetica-LightOblique", "Helvetica-Bold", "Helvetica-BoldOblique"]
Family: Helvetica Neue Font names: ["HelveticaNeue", "HelveticaNeue-Italic", "HelveticaNeue-UltraLight", "HelveticaNeue-UltraLightItalic", "HelveticaNeue-Thin", "HelveticaNeue-ThinItalic", "HelveticaNeue-Light", "HelveticaNeue-LightItalic", "HelveticaNeue-Medium", "HelveticaNeue-MediumItalic", "HelveticaNeue-Bold", "HelveticaNeue-BoldItalic", "HelveticaNeue-CondensedBold", "HelveticaNeue-CondensedBlack"]
Family: Hiragino Maru Gothic ProN Font names: ["HiraMaruProN-W4"]
Family: Hiragino Mincho ProN Font names: ["HiraMinProN-W3", "HiraMinProN-W6"]
Family: Hiragino Sans Font names: ["HiraginoSans-W3", "HiraginoSans-W6", "HiraginoSans-W7"]
Family: Hoefler Text Font names: ["HoeflerText-Regular", "HoeflerText-Italic", "HoeflerText-Black", "HoeflerText-BlackItalic"]
Family: Kailasa Font names: ["Kailasa", "Kailasa-Bold"]
Family: Kefa Font names: ["Kefa-Regular"]
Family: Khmer Sangam MN Font names: ["KhmerSangamMN"]
Family: Kohinoor Bangla Font names: ["KohinoorBangla-Regular", "KohinoorBangla-Light", "KohinoorBangla-Semibold"]
Family: Kohinoor Devanagari Font names: ["KohinoorDevanagari-Regular", "KohinoorDevanagari-Light", "KohinoorDevanagari-Semibold"]
Family: Kohinoor Gujarati Font names: ["KohinoorGujarati-Regular", "KohinoorGujarati-Light", "KohinoorGujarati-Bold"]
Family: Kohinoor Telugu Font names: ["KohinoorTelugu-Regular", "KohinoorTelugu-Light", "KohinoorTelugu-Medium"]
Family: Lao Sangam MN Font names: ["LaoSangamMN"]
Family: Malayalam Sangam MN Font names: ["MalayalamSangamMN", "MalayalamSangamMN-Bold"]
Family: Marker Felt Font names: ["MarkerFelt-Thin", "MarkerFelt-Wide"]
Family: Menlo Font names: ["Menlo-Regular", "Menlo-Italic", "Menlo-Bold", "Menlo-BoldItalic"]
Family: Mishafi Font names: ["DiwanMishafi"]
Family: Mukta Mahee Font names: ["MuktaMahee-Regular", "MuktaMahee-Light", "MuktaMahee-Bold"]
Family: Myanmar Sangam MN Font names: ["MyanmarSangamMN", "MyanmarSangamMN-Bold"]
Family: Noteworthy Font names: ["Noteworthy-Light", "Noteworthy-Bold"]
Family: Noto Nastaliq Urdu Font names: ["NotoNastaliqUrdu", "NotoNastaliqUrdu-Bold"]
Family: Noto Sans Kannada Font names: ["NotoSansKannada-Regular", "NotoSansKannada-Light", "NotoSansKannada-Bold"]
Family: Noto Sans Myanmar Font names: ["NotoSansMyanmar-Regular", "NotoSansMyanmar-Light", "NotoSansMyanmar-Bold"]
Family: Noto Sans Oriya Font names: ["NotoSansOriya", "NotoSansOriya-Bold"]
Family: Optima Font names: ["Optima-Regular", "Optima-Italic", "Optima-Bold", "Optima-BoldItalic", "Optima-ExtraBlack"]
Family: Palatino Font names: ["Palatino-Roman", "Palatino-Italic", "Palatino-Bold", "Palatino-BoldItalic"]
Family: Papyrus Font names: ["Papyrus", "Papyrus-Condensed"]
Family: Party LET Font names: ["PartyLetPlain"]
Family: PingFang HK Font names: ["PingFangHK-Regular", "PingFangHK-Ultralight", "PingFangHK-Thin", "PingFangHK-Light", "PingFangHK-Medium", "PingFangHK-Semibold"]
Family: PingFang SC Font names: ["PingFangSC-Regular", "PingFangSC-Ultralight", "PingFangSC-Thin", "PingFangSC-Light", "PingFangSC-Medium", "PingFangSC-Semibold"]
Family: PingFang TC Font names: ["PingFangTC-Regular", "PingFangTC-Ultralight", "PingFangTC-Thin", "PingFangTC-Light", "PingFangTC-Medium", "PingFangTC-Semibold"]
Family: Rockwell Font names: ["Rockwell-Regular", "Rockwell-Italic", "Rockwell-Bold", "Rockwell-BoldItalic"]
Family: Savoye LET Font names: ["SavoyeLetPlain"]
Family: Sinhala Sangam MN Font names: ["SinhalaSangamMN", "SinhalaSangamMN-Bold"]
Family: Snell Roundhand Font names: ["SnellRoundhand", "SnellRoundhand-Bold", "SnellRoundhand-Black"]
Family: Symbol Font names: ["Symbol"]
Family: Tamil Sangam MN Font names: ["TamilSangamMN", "TamilSangamMN-Bold"]
Family: Thonburi Font names: ["Thonburi", "Thonburi-Light", "Thonburi-Bold"]
Family: Times New Roman Font names: ["TimesNewRomanPSMT", "TimesNewRomanPS-ItalicMT", "TimesNewRomanPS-BoldMT", "TimesNewRomanPS-BoldItalicMT"]
Family: Trebuchet MS Font names: ["TrebuchetMS", "TrebuchetMS-Italic", "TrebuchetMS-Bold", "Trebuchet-BoldItalic"]
Family: Verdana Font names: ["Verdana", "Verdana-Italic", "Verdana-Bold", "Verdana-BoldItalic"]
Family: Zapf Dingbats Font names: ["ZapfDingbatsITC"]
Family: Zapfino Font names: ["Zapfino"]
