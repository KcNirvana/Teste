.class public final synthetic Lcom/miui/video/biz/search/utils/-$$Lambda$SettingDialogUtils$sLuQQnh23bOLvoR73irayEbDd8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/search/utils/-$$Lambda$SettingDialogUtils$sLuQQnh23bOLvoR73irayEbDd8c;->f$0:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/search/utils/-$$Lambda$SettingDialogUtils$sLuQQnh23bOLvoR73irayEbDd8c;->f$0:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;

    invoke-static {v0, p1}, Lcom/miui/video/biz/search/utils/SettingDialogUtils;->lambda$showChooseVoiceLanguageDialog$0(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;Landroid/content/DialogInterface;)V

    return-void
.end method
