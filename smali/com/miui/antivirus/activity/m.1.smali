.class final Lcom/miui/antivirus/activity/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/c;


# instance fields
.field final synthetic asO:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/m;->asO:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqt()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/m;->asO:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axB(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/c;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x406

    invoke-virtual {v0, v2, v1}, Lcom/miui/antivirus/activity/c;->aLg(ILjava/lang/Object;)V

    return-void
.end method
