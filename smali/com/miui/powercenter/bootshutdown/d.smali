.class public Lcom/miui/powercenter/bootshutdown/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aGB:I

.field private aGC:Ljava/lang/String;

.field private aGD:I

.field private aGE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aSQ()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/d;->aGB:I

    return v0
.end method

.method public aSR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/d;->aGC:Ljava/lang/String;

    return-object v0
.end method

.method public aSS(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/d;->aGB:I

    return-void
.end method

.method public aST(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/d;->aGC:Ljava/lang/String;

    return-void
.end method

.method public aSU(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/d;->aGD:I

    return-void
.end method

.method public aSV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/d;->aGE:Ljava/lang/String;

    return-void
.end method
