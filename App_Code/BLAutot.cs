using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

/// <summary>
/// Summary description for BLAutot
/// </summary>
/// 

public class Auto
{
    private int id;
    private string rekkari;
    private string merkki;
    private string malli;
    private int vuosiMalli;
    private int myyntiHinta;
    private int sisaanOstoHinta;

    public int ID 
    {
        get {return id;}
        set {id = value;}
    }

    public string Rekkari
    {
        get { return rekkari; }
        set { rekkari = value; }
    }

    public string Merkki
    {
        get { return merkki; }
        set { merkki = value; }
    }

    public string Malli
    {
        get { return malli; }
        set { malli = value; }
    }

    public int VuosiMalli
    {
        get { return vuosiMalli; }
        set { vuosiMalli = value; }
    }

    public int MyyntiHinta
    {
        get { return myyntiHinta; }
        set { myyntiHinta = value; }
    }

    public int SisaanOstoHinta
    {
        get { return sisaanOstoHinta; }
        set { sisaanOstoHinta = value; }
    }
}


public class BLAutot
{
    private string dataFile;

	public BLAutot(string dataFile)
	{
        this.dataFile = dataFile;
	}

    private Auto createCar(XElement element)
    {
        Auto auto = new Auto();

        auto.ID = int.Parse(element.Element("aid").Value);
        auto.Rekkari = element.Element("rekkari").Value;
        auto.Merkki = element.Element("merkki").Value;
        auto.Malli = element.Element("malli").Value;
        auto.VuosiMalli = int.Parse(element.Element("vm").Value);
        auto.MyyntiHinta = int.Parse(element.Element("myyntiHinta").Value);
        auto.SisaanOstoHinta = int.Parse(element.Element("sisaanOstoHinta").Value);

        return auto;
    }

    public List<Auto> getAllCars()
    {
        List<Auto> cars = new List<Auto>();
        XDocument doc = XDocument.Load(dataFile);
        XElement el = doc.Element("Wanhatautot");

        foreach (XElement element in el.Elements())
            cars.Add(createCar(element));

        cars.Sort((c1, c2) => c1.ID.CompareTo(c2.ID));
        return cars;
    }

    public void removeCar(Auto auto)
    {
        XDocument doc = XDocument.Load(dataFile);

        IEnumerable<XElement> elements =
            (from el in doc.Root.Elements("Auto") where (string)el.Element("aid").Value == auto.ID.ToString() select el);

        if (elements.Count() > 0)
            elements.First().Remove();

        doc.Save(dataFile);
    }

    public void addCar(Auto auto, bool update = false)
    {
        XDocument doc = XDocument.Load(dataFile);
        //Poistetaan olemassa oleava auto jos pävitetään vanhan auton tietoja
        if (update == true) {
            IEnumerable<XElement> elements =
                (from el in doc.Root.Elements("Auto") where (string)el.Element("aid").Value == auto.ID.ToString() select el);

            if (elements.Count() > 0)
                elements.First().Remove();
        }

        XElement element = new XElement("Auto", 
            new XElement("aid", auto.ID), 
            new XElement("rekkari", auto.Rekkari), 
            new XElement("merkki", auto.Merkki), 
            new XElement("malli", auto.Malli), 
            new XElement("vm", auto.VuosiMalli), 
            new XElement("myyntiHinta", auto.MyyntiHinta), 
            new XElement("sisaanOstoHinta", auto.SisaanOstoHinta) 
        );

        doc.Root.Add(element);
        doc.Save(dataFile);
    }

    public Auto getCar(int id)
    {
        XDocument doc = XDocument.Load(dataFile);

        IEnumerable<XElement> elements = (from el in doc.Root.Elements("Auto") 
                                          where (string)el.Element("aid").Value == id.ToString() 
                                          select el);

        if(elements.Count() > 0)
            return createCar(elements.First());

        return null;
    }

}