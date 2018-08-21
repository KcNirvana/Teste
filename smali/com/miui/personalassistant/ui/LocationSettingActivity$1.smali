.class Lcom/miui/personalassistant/ui/LocationSettingActivity$1;
.super Ljava/lang/Object;
.source "LocationSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/LocationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/LocationSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$1;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$1;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/LocationSettingActivity;->setResult(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LocationSettingActivity$1;->this$0:Lcom/miui/personalassistant/ui/LocationSettingActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/LocationSettingActivity;->finish()V

    return-void
.end method
