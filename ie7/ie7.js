/* To avoid CSS expressions while still supporting IE 7 and IE 6, use this script */
/* The script tag referencing this file must be placed before the ending body tag. */

/* Use conditional comments in order to target IE 7 and older:
	<!--[if lt IE 8]><!-->
	<script src="ie7/ie7.js"></script>
	<!--<![endif]-->
*/

(function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'reneco-font\'">' + entity + '</span>' + html;
	}
	var icons = {
		'reneco.ring': '&#xe64e;',
		'reneco.marker': '&#xe64f;',
		'reneco.user': '&#xe651;',
		'reneco.users': '&#xe652;',
		'reneco.distance': '&#xe653;',
		'reneco.time': '&#xe655;',
		'reneco.bird': '&#xe656;',
		'reneco.settings': '&#xe657;',
		'reneco.import1': '&#xe658;',
		'reneco.validate': '&#xe659;',
		'reneco.syncing': '&#xe65a;',
		'reneco.leftarrow': '&#xe65b;',
		'reneco.rightarrow': '&#xe65c;',
		'reneco.add': '&#xe65d;',
		'reneco.close': '&#xe65e;',
		'reneco.search': '&#xe65f;',
		'reneco.search2': '&#xe61e;',
		'reneco.favorite': '&#xe660;',
		'reneco.timewhite': '&#xe661;',
		'reneco.timeblack': '&#xe662;',
		'reneco.pin': '&#xe663;',
		'reneco.rewind': '&#xe664;',
		'reneco.play': '&#xe665;',
		'reneco.forward': '&#xe666;',
		'reneco.emitters': '&#xe667;',
		'reneco.edit': '&#xe669;',
		'reneco.report': '&#xe67c;',
		'reneco.sheet': '&#xe66a;',
		'reneco.sheet2': '&#xe66b;',
		'reneco.pin2': '&#xe66c;',
		'reneco.female': '&#xe66d;',
		'reneco.male': '&#xe650;',
		'reneco.id': '&#xe66e;',
		'reneco.graph': '&#xe673;',
		'reneco.menu': '&#xe674;',
		'reneco.elevage': '&#xe675;',
		'reneco.free': '&#xe676;',
		'reneco.observation': '&#xe677;',
		'reneco.layers': '&#xe64d;',
		'reneco.selectarea': '&#xe678;',
		'reneco.fit': '&#xe67d;',
		'reneco.drag': '&#xe679;',
		'reneco.calendar': '&#xe67a;',
		'reneco.satellite': '&#xe67b;',
		'reneco.bird2': '&#xe67e;',
		'reneco.child': '&#xe67f;',
		'reneco.adult': '&#xe680;',
		'reneco.trash': '&#xe681;',
		'reneco.export2': '&#xe686;',
		'reneco.import2': '&#xe687;',
		'reneco.importsensor2': '&#xe689;',
		'reneco.mydata': '&#xe688;',
		'reneco.importsensor': '&#xe68a;',
		'reneco.exportsensor': '&#xe68b;',
		'reneco.map': '&#xe68c;',
		'reneco.ecollectionbig': '&#xe68d;',
		'reneco.releve': '&#xe68e;',
		'reneco.trackbird': '&#xe68f;',
		'reneco.security': '&#xe690;',
		'reneco.thesaurus': '&#xe691;',
		'reneco.worldbig': '&#xe692;',
		'reneco.worldsmall': '&#xe693;',
		'reneco.ecorelevesmall': '&#xe694;',
		'reneco.tracksmall': '&#xe695;',
		'reneco.thesaurussmall': '&#xe696;',
		'reneco.securitysmall': '&#xe697;',
		'reneco.site': '&#xe698;',
		'reneco.comment': '&#xe699;',
		'reneco.observers': '&#xe69b;',
		'reneco.protocol': '&#xe602;',
		'reneco.individualsmall': '&#xe61f;',
		'reneco.stations': '&#xe670;',
		'reneco.sites': '&#xe671;',
		'reneco.sensors': '&#xe62f;',
		'reneco.individuals': '&#xe630;',
		'reneco.entrykey': '&#xe632;',
		'reneco.entry': '&#xe631;',
		'reneco.export': '&#xe633;',
		'reneco.import': '&#xe634;',
		'reneco.mydata': '&#xe635;',
		'reneco.sensorimport': '&#xe636;',
		'reneco.write': '&#xe64b;',
		'reneco.validatebig': '&#xe69c;',
		'reneco.info': '&#xe69d;',
		'reneco.back': '&#xe69e;',
		'reneco.exportsmall': '&#xe600;',
		'reneco.view': '&#xe601;',
		'reneco.drag2': '&#xe603;',
		'reneco.duplicate': '&#xe604;',
		'0': 0
		},
		els = document.getElementsByTagName('*'),
		i, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		c = el.className;
		c = c.match(/reneco.[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
}());
