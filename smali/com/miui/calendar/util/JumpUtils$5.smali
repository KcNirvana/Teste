.class final Lcom/miui/calendar/util/JumpUtils$5;
.super Landroid/os/AsyncTask;
.source "JumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/util/JumpUtils;->checkIntentResolvableAsync(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$onCheckListener:Lcom/miui/calendar/util/JumpUtils$OnCheckListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/calendar/util/JumpUtils$OnCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$onCheckListener:Lcom/miui/calendar/util/JumpUtils$OnCheckListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/calendar/util/JumpUtils;->isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/JumpUtils$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$onCheckListener:Lcom/miui/calendar/util/JumpUtils$OnCheckListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$onCheckListener:Lcom/miui/calendar/util/JumpUtils$OnCheckListener;

    iget-object v1, p0, Lcom/miui/calendar/util/JumpUtils$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/calendar/util/JumpUtils$OnCheckListener;->checkFinish(Landroid/content/Intent;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/JumpUtils$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
