/*
 * generated by Xtext
 */
package com.dubture.editor.sass.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;

public class AbstractSassValidator extends org.eclipse.xtext.validation.AbstractDeclarativeValidator {

	@Override
	protected List<EPackage> getEPackages() {
	    List<EPackage> result = new ArrayList<EPackage>();
	    result.add(com.dubture.editor.sass.sass.SassPackage.eINSTANCE);
		return result;
	}
}
