.class public Lcom/miui/common/h/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aCm:Ljava/lang/String;

.field private aCn:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aNj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/h/a;->aCm:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/h/a;->aCm:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/h/a;->aCn:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/h/a;->uid:I

    return-void
.end method
