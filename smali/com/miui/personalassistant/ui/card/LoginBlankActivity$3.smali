.class Lcom/miui/personalassistant/ui/card/LoginBlankActivity$3;
.super Ljava/lang/Object;
.source "LoginBlankActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/card/LoginBlankActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$3;->this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/LoginBlankActivity$3;->this$0:Lcom/miui/personalassistant/ui/card/LoginBlankActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/card/LoginBlankActivity;->finish()V

    return-void
.end method
