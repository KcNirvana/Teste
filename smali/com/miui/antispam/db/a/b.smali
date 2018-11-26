.class public Lcom/miui/antispam/db/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ZA:Ljava/lang/String;

.field private ZB:Ljava/lang/String;

.field private ZC:I

.field private Zx:Ljava/lang/String;

.field private Zy:Ljava/lang/String;

.field private Zz:I

.field private id:I

.field private state:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/db/a/b;->ZA:Ljava/lang/String;

    iput v1, p0, Lcom/miui/antispam/db/a/b;->state:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/db/a/b;->Zz:I

    iput v1, p0, Lcom/miui/antispam/db/a/b;->ZC:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/db/a/b;->ZA:Ljava/lang/String;

    iput v1, p0, Lcom/miui/antispam/db/a/b;->state:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/db/a/b;->Zz:I

    iput v1, p0, Lcom/miui/antispam/db/a/b;->ZC:I

    iput-object p1, p0, Lcom/miui/antispam/db/a/b;->Zx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/antispam/db/a/b;->ZA:Ljava/lang/String;

    iput v1, p0, Lcom/miui/antispam/db/a/b;->state:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/db/a/b;->Zz:I

    iput v1, p0, Lcom/miui/antispam/db/a/b;->ZC:I

    iput-object p1, p0, Lcom/miui/antispam/db/a/b;->Zx:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/antispam/db/a/b;->ZB:Ljava/lang/String;

    iput p3, p0, Lcom/miui/antispam/db/a/b;->type:I

    iput p4, p0, Lcom/miui/antispam/db/a/b;->state:I

    return-void
.end method


# virtual methods
.method public YA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/db/a/b;->ZB:Ljava/lang/String;

    return-object v0
.end method

.method public YB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/db/a/b;->Zy:Ljava/lang/String;

    return-void
.end method

.method public YC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/db/a/b;->ZA:Ljava/lang/String;

    return-void
.end method

.method public YD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/db/a/b;->ZB:Ljava/lang/String;

    return-void
.end method

.method public Yz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/db/a/b;->Zx:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/a/b;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/a/b;->type:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antispam/db/a/b;->id:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antispam/db/a/b;->state:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antispam/db/a/b;->type:I

    return-void
.end method
