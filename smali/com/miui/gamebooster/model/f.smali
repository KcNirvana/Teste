.class public Lcom/miui/gamebooster/model/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private kZ:Lcom/miui/gamebooster/model/HeaderType;

.field private la:I

.field private lb:Ljava/util/ArrayList;

.field private mHeaderTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/f;->mHeaderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/f;->la:I

    return v0
.end method

.method public mV()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/f;->lb:Ljava/util/ArrayList;

    return-object v0
.end method

.method public mW()Lcom/miui/gamebooster/model/HeaderType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/f;->kZ:Lcom/miui/gamebooster/model/HeaderType;

    return-object v0
.end method

.method public mX(Lcom/miui/gamebooster/model/HeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/f;->kZ:Lcom/miui/gamebooster/model/HeaderType;

    return-void
.end method

.method public mY(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/f;->la:I

    return-void
.end method

.method public mZ(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/f;->lb:Ljava/util/ArrayList;

    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/f;->mHeaderTitle:Ljava/lang/String;

    return-void
.end method
