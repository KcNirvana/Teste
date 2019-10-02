.class public Lcom/miui/video/biz/search/utils/SettingDialogUtils;
.super Lcom/miui/video/common/library/widget/VideoCommonDialog;
.source "SettingDialogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingDialogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/widget/VideoCommonDialog;-><init>()V

    return-void
.end method

.method protected static initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x57

    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$showChooseVoiceLanguageDialog$0(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->release()V

    return-void
.end method

.method public static showChooseVoiceLanguageDialog(Landroid/content/Context;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->setOkOnClickListener(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1, p1}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method public static showChooseVoiceLanguageDialog(Landroid/content/Context;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->setOkOnClickListener(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance p2, Lcom/miui/video/biz/search/utils/-$$Lambda$SettingDialogUtils$sLuQQnh23bOLvoR73irayEbDd8c;

    invoke-direct {p2, v0}, Lcom/miui/video/biz/search/utils/-$$Lambda$SettingDialogUtils$sLuQQnh23bOLvoR73irayEbDd8c;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p0, p1}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method
