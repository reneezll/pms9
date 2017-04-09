package gu.domain.codequality.swmd.controller.rest;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import gu.domain.codequality.swmd.dao.ProjSignalDao;
import gu.domain.codequality.swmd.model.ProjSignalModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = { "/api/v1" }, produces = MediaType.APPLICATION_JSON_VALUE)
public class SwmdRestController {

	@Autowired
	ProjSignalDao projSignalDao;

	@RequestMapping(value = "/swmd/", method = RequestMethod.GET)
	public ArrayList<ProjSignalModel> list() {
		ArrayList<ProjSignalModel> arrayList = new ArrayList<>();

		return arrayList;
	}

}
