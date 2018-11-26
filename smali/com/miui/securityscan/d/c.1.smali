.class public Lcom/miui/securityscan/d/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private JW:Lcom/miui/common/card/models/AdvCardModel;

.field private JX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/d/c;->JX:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/d/c;->JW:Lcom/miui/common/card/models/AdvCardModel;

    return-void
.end method

.method static synthetic Lt(Lcom/miui/securityscan/d/c;)Lcom/miui/common/card/models/AdvCardModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/c;->JW:Lcom/miui/common/card/models/AdvCardModel;

    return-object v0
.end method

.method static synthetic Lu(Lcom/miui/securityscan/d/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/c;->JX:Ljava/lang/String;

    return-object v0
.end method
