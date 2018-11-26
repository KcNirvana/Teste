.class final Lcom/miui/firstaidkit/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vN:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/y;->vN:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/y;->vN:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wG(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/y;->vN:Lcom/miui/firstaidkit/FirstAidKitActivity;

    iget-object v0, v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->uJ:Lcom/miui/firstaidkit/a;

    new-instance v1, Lcom/miui/firstaidkit/z;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/z;-><init>(Lcom/miui/firstaidkit/y;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/firstaidkit/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
