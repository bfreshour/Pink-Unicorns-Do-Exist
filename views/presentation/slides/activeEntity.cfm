<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#one">
                    Setup Active Entity
                </a>
            </h4>
        </div>
        <div id="one" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
extends="coldbox.system.orm.hibernate.ActiveEntity"
...
public ActiveCar function init() {
    super.init();
    return this;
}
</pre>
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#two">
                    Create a Car
                </a>
            </h4>
        </div>
        <div id="two" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var car = entityNew( "ActiveCar" );
var newCar = car.new( properties={Year: 2012, ListPrice: 22000});
</pre>
<cfdump var="#prc.newcar#" expand="false">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#three">
                    Find a Specific Car
                </a>
            </h4>
        </div>
        <div id="three" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var car = entityNew( "ActiveCar" );
var foundCar = ORMService.findWhere( entityName='SimpleCar', criteria={ CarID = 12 } );
</pre>
<cfdump var="#prc.mycar#" expand="false">
            </div>
        </div>
    </div>
</div>
<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#four">
                    List Cars
                </a>
            </h4>
        </div>
        <div id="four" class="panel-collapse collapse">
            <div class="panel-body">
<pre>
var car = entityNew( "ActiveCar" );
var carList = ORMService.list( entityName='SimpleCar', max=3, asQuery=false );
</pre>
<cfdump var="#prc.cars#" expand="false">
            </div>
        </div>
    </div>
</div>