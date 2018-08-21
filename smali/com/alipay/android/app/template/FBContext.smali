.class public interface abstract Lcom/alipay/android/app/template/FBContext;
.super Ljava/lang/Object;
.source "FBContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/template/FBContext$NavbarInterface;
    }
.end annotation


# static fields
.field public static final OPTION_DEFER_DOWNLOAD:Ljava/lang/String; = "deferDownload"

.field public static final OPTION_DEFER_DOWNLOAD_FILTER:Ljava/lang/String; = "deferDownloadFilter"


# virtual methods
.method public abstract callJsMethod(I[Ljava/lang/Object;)I
.end method

.method public abstract destroy()V
.end method

.method public abstract destroy(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract executeJs(Ljava/lang/String;)I
.end method

.method public abstract getAutoFocusable()Lcom/alipay/android/app/template/FBFocusable;
.end method

.method public abstract getBodyOpacity()F
.end method

.method public abstract getBodyView()Ljava/lang/Object;
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
.end method

.method public abstract getNav()Lcom/alipay/android/app/template/FBContext$NavbarInterface;
.end method

.method public abstract getParameter(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getShowingDialog()Landroid/app/Dialog;
.end method

.method public abstract getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
.end method

.method public abstract hasInput()Z
.end method

.method public abstract isFullscreen()Z
.end method

.method public abstract isOnloadFinish()Z
.end method

.method public abstract layoutNodeWithDimensions(JII)V
.end method

.method public abstract queryView(Ljava/lang/String;)Landroid/view/View;
.end method

.method public abstract reloadData(Ljava/lang/String;)V
.end method

.method public abstract setAutoFocusable(Lcom/alipay/android/app/template/FBFocusable;)V
.end method

.method public abstract setHasInput(Z)V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method
