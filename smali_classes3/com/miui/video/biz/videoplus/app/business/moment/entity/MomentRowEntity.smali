.class public Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;
.super Lcom/miui/video/biz/videoplus/app/entities/RowEntity;
.source "MomentRowEntity.java"


# instance fields
.field private address:Ljava/lang/String;

.field private columnCount:I

.field private dateDesc:Ljava/lang/String;

.field private dateFormat:Ljava/lang/String;

.field private day:Ljava/lang/String;

.field private locationDes:Ljava/lang/String;

.field private month:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->columnCount:I

    return v0
.end method

.method public getDateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->dateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getDateDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getLocationDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->locationDes:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->year:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->address:Ljava/lang/String;

    return-void
.end method

.method public setColumnCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->columnCount:I

    return-void
.end method

.method public setDateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->dateDesc:Ljava/lang/String;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->day:Ljava/lang/String;

    return-void
.end method

.method public setLocationDes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->locationDes:Ljava/lang/String;

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->month:Ljava/lang/String;

    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->year:Ljava/lang/String;

    return-void
.end method
