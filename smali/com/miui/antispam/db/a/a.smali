.class public Lcom/miui/antispam/db/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Zv:Ljava/lang/String;

.field private Zw:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/db/a/a;->Zw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/db/a/a;->Zw:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/antispam/db/a/a;->Zv:Ljava/lang/String;

    iput p3, p0, Lcom/miui/antispam/db/a/a;->type:I

    return-void
.end method


# virtual methods
.method public Yy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/db/a/a;->Zw:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/db/a/a;->Zv:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/db/a/a;->type:I

    return v0
.end method
