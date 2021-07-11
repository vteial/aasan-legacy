import 'dart:html';

var contentAll = {
  'en' : {
    'Title': 'Aasan',
    'One': 'Profit based education is morally and ethically wrong. Modern coaching centres are not education institutes rather they are cheats. Under privileged are not getting quality education due to this coaching centres. Modern coaching centres work on probabilistic principles.',
    'Two': 'How we are different?',
    'Three': 'Students of same batch would share the internet cost of the coaching session. It is completely optional to pay to the teacher ranging from 1 rupee to anything as they wish. Individual attention would be given to every student. Students would be encouraged to solve the problems on their own and slight hand holding may be provided.',
    'Four': 'What is our success?',
    'Five': 'If we could make an at least one under privileged student on par with privileged students then we believe that is the success.'
  },
  'ta' : {
    'Title': 'ஆசான்',
    'One': 'இலாப அடிப்படையிலான கல்வி தார்மீக ரீதியாகவும் நெறிமுறையாகவும் தவறானது.நவீன பயிற்சி மையங்கள் கல்வி நிறுவனங்கள் அல்ல, மாறாக அவை ஏமாற்றுக்காரர்கள்.இந்த பயிற்சி மையங்களால் தாழ்த்தப்பட்டோருக்கு தரமான கல்வி கிடைக்கவில்லை.நவீன பயிற்சி மையங்கள் நிகழ்தகவு கொள்கைகளில் செயல்படுகின்றன.',
    'Two': 'நாம் எப்படி வித்தியாசமாக இருக்கிறோம்?',
    'Three': 'அதே தொகுப்பின் மாணவர்கள் பயிற்சி அமர்வின் இணைய செலவைப் பகிர்ந்து கொள்வார்கள். ஆசிரியருக்கு 1 ரூபாய் முதல் எதையும் அவர்கள் விரும்பியபடி செலுத்துவது முற்றிலும் விருப்பமானது. ஒவ்வொரு மாணவருக்கும் தனிப்பட்ட கவனம் செலுத்தப்படும். மாணவர்கள் தாங்களாகவே பிரச்சினைகளைத் தீர்க்க ஊக்குவிக்கப்படுவார்கள், மேலும் சிறிது கையால் வழங்கப்படலாம்.',
    'Four': 'எங்கள் வெற்றி என்ன?',
    'Five': 'சலுகை பெற்ற மாணவர்களுக்கு இணையாக குறைந்த பட்சம் ஒரு மாணவனையாவது செய்ய முடிந்தால், அதுவே வெற்றி என்று நாங்கள் நம்புகிறோம்.'
  }
};
var contentLan = 'en';
var contentCur = contentAll[contentLan];

void main() {
  querySelector('#btnTa')?.onClick.listen(switchToTa);
  querySelector('#btnEn')?.onClick.listen(switchToEn);
  switchToTa(Event.eventType('MouseEvent', 'mousedown'));
  // querySelector('#contTitle')?.text = contentCur?['Title'];
}

void switchToTa(Event e) {
  if(contentLan == 'ta') return;
  contentLan = 'ta';
  contentCur = contentAll[contentLan];
  onLanguageChange();
}

void switchToEn(Event e) {
  if(contentLan == 'en') return;
  contentLan = 'en';
  contentCur = contentAll[contentLan];
  onLanguageChange();
}

void onLanguageChange() {
  contentCur = contentAll[contentLan];
  print('Current Language : ' + contentLan);
  var keys = contentCur?.keys, val;
  if(keys != null) {
    for (var key in keys) {
      val = contentCur?[key];
      if(val != null) {
        querySelector('#cont' + key)?.text = val;
      }
    }
  }
}

