.class final Lcom/miui/firstaidkit/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vO:Lcom/miui/firstaidkit/y;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/z;->vO:Lcom/miui/firstaidkit/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/z;->vO:Lcom/miui/firstaidkit/y;

    iget-object v0, v0, Lcom/miui/firstaidkit/y;->vN:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wD(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/ProgressLayout;

    move-result-object v0

    new-instance v1, Lcom/miui/firstaidkit/A;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/A;-><init>(Lcom/miui/firstaidkit/z;)V

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/ui/ProgressLayout;->vD(Lcom/miui/firstaidkit/ui/a;)V

    return-void
.end method
