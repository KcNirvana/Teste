.class public Lcom/miui/weather2/structures/CornerMarkBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cornerData:Lcom/miui/weather2/structures/CornerDataBean;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCornerData()Lcom/miui/weather2/structures/CornerDataBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CornerMarkBean;->cornerData:Lcom/miui/weather2/structures/CornerDataBean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CornerMarkBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCornerData(Lcom/miui/weather2/structures/CornerDataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CornerMarkBean;->cornerData:Lcom/miui/weather2/structures/CornerDataBean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CornerMarkBean;->type:Ljava/lang/String;

    return-void
.end method
