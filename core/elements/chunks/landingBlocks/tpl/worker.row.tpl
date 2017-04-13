[[+idx:in=`1,3,5,7,9`:then=`<div class="row">`]]    
    <div class="col-xs-6 [[+idx:in=`2,4,6,8,10,12`:then=`paddingleft20px`]]">
        <div class="workerRowInner">
            <div class="row">
                <div class="col-xs-4">
                    <div class="relative">
                        <img class="img-circle img-responsive [[+idx:in=`2,4,6,8,10`:then=`w106`]]" src="[[+image]]" />
                        <span class="circle-numeric">[[+idx]]</span>
                    </div>
                </div>
                <div class="col-xs-8">
                    <h3 class="upper-case RobotoBold">[[+pos]]</h3>
                    <div class="RobotoLight workerRowTitle">
                        [[+name]]
                    </div>
                </div>
            </div>
            <p class="RobotoLight">
                [[+descr]]
            </p>
        </div>
    </div>
    
[[+idx:in=`2,4,6,8`:or:if=`[[+_last]]`:is=`1`:then=`</div>`:else=``]]