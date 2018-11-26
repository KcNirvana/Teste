.class public Lcom/miui/securityscan/d/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private JY:Lcom/miui/common/datamodel/Advertisement;

.field private JZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/common/datamodel/Advertisement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/d/d;->JZ:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/d/d;->JY:Lcom/miui/common/datamodel/Advertisement;

    return-void
.end method

.method static synthetic Lv(Lcom/miui/securityscan/d/d;)Lcom/miui/common/datamodel/Advertisement;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/d;->JY:Lcom/miui/common/datamodel/Advertisement;

    return-object v0
.end method

.method static synthetic Lw(Lcom/miui/securityscan/d/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/d;->JZ:Ljava/lang/String;

    return-object v0
.end method
