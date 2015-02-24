package compromisomx;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class URLValidator {

	public static String validateYouTube(String url) {
		// Ejemplo: https://www.youtube.com/watch?v=v5pi66Bco14 ";
		String pattern = "https?:\\/\\/(?:[0-9A-Z-]+\\.)?(?:youtu\\.be\\/|youtube\\.com\\S*[^\\w\\-\\s])([\\w\\-]{11})(?=[^\\w\\-]|$)(?![?=&+%\\w]*(?:['\"][^<>]*>|<\\/a>))[?=&+%\\w]*";
		Pattern compiledPattern = Pattern.compile(pattern,
				Pattern.CASE_INSENSITIVE);
		Matcher matcher = compiledPattern.matcher(url);
		while (matcher.find()) {
			// Se regresa la URL encontrada
			return matcher.group();
		}
		// Si no encuentra nada, la cadena se regresa vacía
		return "";
	}

	public static String getYouTubeID(String url) {
		String g = validateYouTube(url);
		String[] split = g.split("v=");
		if (split.length > 1) {
			return split[1].split("&")[0];
		} else {
			split = g.split("be/");
			if (split.length > 1) {
				return split[1].split("\\?")[0];
			}
		}
		return "";
	}

	public static String nameFileExt(String file) {
		String[] split = file.split("\\.");
		return "." + split[split.length - 1];
	}
}
