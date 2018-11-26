.class final Lcom/miui/firstaidkit/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic vH:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/v;->vH:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/v;->vH:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wk()V

    iget-object v0, p0, Lcom/miui/firstaidkit/v;->vH:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->finish()V

    return-void
.end method
