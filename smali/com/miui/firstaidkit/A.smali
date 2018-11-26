.class final Lcom/miui/firstaidkit/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/firstaidkit/ui/a;


# instance fields
.field final synthetic vP:Lcom/miui/firstaidkit/z;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/z;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/A;->vP:Lcom/miui/firstaidkit/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vG()V
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/A;->vP:Lcom/miui/firstaidkit/z;

    iget-object v0, v0, Lcom/miui/firstaidkit/z;->vO:Lcom/miui/firstaidkit/y;

    iget-object v0, v0, Lcom/miui/firstaidkit/y;->vN:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wo()V

    return-void
.end method
