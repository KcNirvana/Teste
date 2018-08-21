.class public Lcom/miui/personalassistant/express/bean/ExpressEntry;
.super Ljava/lang/Object;
.source "ExpressEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bizCode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public companyCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "cpCode"
        }
    .end annotation
.end field

.field public companyName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "logistics_name"
        }
    .end annotation
.end field

.field public details:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public latestDetail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "detail"
        }
    .end annotation
.end field

.field public latestTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "detailTime"
        }
    .end annotation
.end field

.field public openLocker:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "openGui"
        }
    .end annotation
.end field

.field public orderNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "order"
        }
    .end annotation
.end field

.field public phone:Ljava/lang/String;

.field public pickupCode:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "boxCode"
        }
    .end annotation
.end field

.field public remark:Ljava/lang/String;

.field public schedule:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "scheduleDelivery"
        }
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "pkgName"
        }
    .end annotation
.end field

.field public state:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        alternateNames = {
            "stateNum"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/express/bean/ExpressEntry$1;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/bean/ExpressEntry$1;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestDetail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->pickupCode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->openLocker:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->schedule:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->source:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->remark:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->phone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    check-cast p1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBizCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/express/util/CodeConverter;->getInstance()Lcom/miui/personalassistant/express/util/CodeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/util/CodeConverter;->convertCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    invoke-static {}, Lcom/miui/personalassistant/express/util/CodeConverter;->getInstance()Lcom/miui/personalassistant/express/util/CodeConverter;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/util/CodeConverter;->convertState(I)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->details:Ljava/util/List;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    return v0
.end method

.method public isOnTheWay()Z
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenLocker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->openLocker:Z

    return v0
.end method

.method public isPickupCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->pickupCode:Z

    return v0
.end method

.method public isSchedule()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->schedule:Z

    return v0
.end method

.method public setBizCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    return-void
.end method

.method public setCompanyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/DetailEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->details:Ljava/util/List;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->key:Ljava/lang/String;

    return-void
.end method

.method public setLatestDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestDetail:Ljava/lang/String;

    return-void
.end method

.method public setLatestTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestTime:Ljava/lang/String;

    return-void
.end method

.method public setOpenLocker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->openLocker:Z

    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPickupCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->pickupCode:Z

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSchedule(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->schedule:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->source:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExpressEntry{companyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", companyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", orderNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", latestDetail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", latestTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pickupCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->pickupCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openLocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->openLocker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", schedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->schedule:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->details:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bizCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->companyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->orderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->latestTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->pickupCode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->openLocker:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->schedule:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/bean/ExpressEntry;->bizCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
