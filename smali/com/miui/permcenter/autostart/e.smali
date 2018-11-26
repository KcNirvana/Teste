.class public Lcom/miui/permcenter/autostart/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Om:Lcom/miui/permcenter/autostart/HeaderType;

.field private On:Ljava/util/ArrayList;

.field private mHeaderTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Pf(Lcom/miui/permcenter/autostart/HeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/e;->Om:Lcom/miui/permcenter/autostart/HeaderType;

    return-void
.end method

.method public Pg(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/e;->On:Ljava/util/ArrayList;

    return-void
.end method

.method public Ph()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/e;->On:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Pi()Lcom/miui/permcenter/autostart/HeaderType;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/e;->Om:Lcom/miui/permcenter/autostart/HeaderType;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/e;->mHeaderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/e;->mHeaderTitle:Ljava/lang/String;

    return-void
.end method
