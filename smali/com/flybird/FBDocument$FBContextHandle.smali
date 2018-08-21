.class Lcom/flybird/FBDocument$FBContextHandle;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Lcom/alipay/android/app/template/FBPluginCtx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flybird/FBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FBContextHandle"
.end annotation


# instance fields
.field document:Lcom/flybird/FBDocument;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deliverOnBlur(J)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/flybird/FBView;->nativePlatformOnBlur(J)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnChange(JLjava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/flybird/FBView;->nativePlatformOnChange(JLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public deliverOnClick(J)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/flybird/FBView;->nativePlatformOnClick(J)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnFocus(J)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/flybird/FBView;->nativePlatformOnFocus(J)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnInput(JLjava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/flybird/FBView;->nativePlatformOnInput(JLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public deliverOnKeyDown(JI)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/flybird/FBView;->nativePlatformOnKeyDown(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnLongpress(J)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/flybird/FBView;->nativePlatformOnLongpress(J)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnMouseDown(JII)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/flybird/FBView;->nativePlatformOnMouseDown(JII)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnMouseMove(JII)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/flybird/FBView;->nativePlatformOnMouseMove(JII)Z

    move-result v0

    goto :goto_0
.end method

.method public deliverOnMouseUp(JII)Z
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/flybird/FBView;->nativePlatformOnMouseUp(JII)Z

    move-result v0

    goto :goto_0
.end method

.method destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    return-void
.end method

.method public getBodyView()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    goto :goto_0
.end method

.method public getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$600(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    goto :goto_0
.end method

.method public getFbContext()Lcom/alipay/android/app/template/FBContext;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    return-object v0
.end method

.method public getShowingDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$400(Lcom/flybird/FBDocument;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$500(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    goto :goto_0
.end method

.method public getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$700(Lcom/flybird/FBDocument;)Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    goto :goto_0
.end method

.method public hasInput()Z
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    iget-boolean v0, v0, Lcom/flybird/FBDocument;->mHasInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullscreen()Z
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-static {v0}, Lcom/flybird/FBDocument;->access$800(Lcom/flybird/FBDocument;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnloadFinish()Z
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeExecuteJs(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/flybird/FBDocument$FBContextHandle;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    invoke-static {v0, p1}, Lcom/flybird/FBDocument;->nativeExcuteJs(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setAutoFocus(Lcom/alipay/android/app/template/FBFocusable;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    invoke-static {v0, p1}, Lcom/flybird/FBDocument;->access$202(Lcom/flybird/FBDocument;Lcom/alipay/android/app/template/FBFocusable;)Lcom/alipay/android/app/template/FBFocusable;

    :cond_0
    return-void
.end method

.method public setHasInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$FBContextHandle;->document:Lcom/flybird/FBDocument;

    iput-boolean p1, v0, Lcom/flybird/FBDocument;->mHasInput:Z

    :cond_0
    return-void
.end method
