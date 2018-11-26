.class public Lcom/miui/securityscan/d/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Ke:Lcom/miui/gamebooster/gamead/Advertisement;

.field private Kf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/d/g;->Kf:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/d/g;->Ke:Lcom/miui/gamebooster/gamead/Advertisement;

    return-void
.end method

.method static synthetic LB(Lcom/miui/securityscan/d/g;)Lcom/miui/gamebooster/gamead/Advertisement;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/g;->Ke:Lcom/miui/gamebooster/gamead/Advertisement;

    return-object v0
.end method

.method static synthetic LC(Lcom/miui/securityscan/d/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/g;->Kf:Ljava/lang/String;

    return-object v0
.end method
