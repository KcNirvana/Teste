.class Lcom/miui/personalassistant/ui/CardSettingsActivity$4;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$4;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$400(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/personalassistant/ui/CardSettingsActivity$4$1;-><init>(Lcom/miui/personalassistant/ui/CardSettingsActivity$4;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
