.class public Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;
.super Landroid/os/AsyncTask;
.source "ClipboardAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mICallBack:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->mICallBack:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->mICallBack:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->mICallBack:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;

    invoke-interface {v0}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;->onPreExecute()V

    return-void
.end method

.method public setICallBack(Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->mICallBack:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;

    return-void
.end method
