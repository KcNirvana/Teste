.class public Lcom/miui/applicationlock/ChooseAppToLockActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field public static final afe:Ljava/util/ArrayList;

.field public static final aff:Lmiui/util/ArraySet;


# instance fields
.field private afg:I

.field private afh:Ljava/util/ArrayList;

.field private afi:Lcom/miui/applicationlock/utils/e;

.field private afj:Ljava/util/Comparator;

.field private afk:Landroid/content/DialogInterface$OnClickListener;

.field private afl:Ljava/util/Comparator;

.field private afm:Ljava/lang/String;

.field private afn:Landroid/widget/TextView;

.field private afo:Lmiui/app/AlertDialog;

.field private afp:Lmiui/app/AlertDialog;

.field private afq:Lcom/miui/applicationlock/utils/a;

.field private afr:Ljava/util/ArrayList;

.field private afs:Lcom/miui/applicationlock/g;

.field public aft:Z

.field private afu:Ljava/lang/String;

.field private afv:I

.field private afw:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

.field private language:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mSearchActionMode:Lmiui/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSortedButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/util/ArraySet;

    invoke-direct {v0}, Lmiui/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "pl.zdunex25.updater"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.mi.android.globalFileexplorer"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.camera"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.player"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.video"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "net.cactii.flash2"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.gamecenter.pad"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.vipaccount"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.mipay.wallet"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.jr"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.scanner"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.apps.photos"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.google.android.videos"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.videoplayer"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aff:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.htc.album"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.bbm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.bsb.hike"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.viber.voip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.tmall.wireless"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mipay.wallet"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.wumii.android.mimi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mi.android.globalFileexplorer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.videoplayer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.instagram.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afe:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.vkontakte.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    iput v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afg:I

    new-instance v0, Lcom/miui/applicationlock/v;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/v;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/w;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/w;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/applicationlock/x;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/x;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afk:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/y;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/y;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afj:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/applicationlock/z;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/z;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afl:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/applicationlock/A;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/A;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-void
.end method

.method private akK()V
    .locals 4

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0100

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afk:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lmiui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/applicationlock/D;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/D;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private akL()V
    .locals 4

    new-instance v0, Lcom/miui/applicationlock/widget/j;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    const v2, 0x7f0b0073

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/applicationlock/widget/j;-><init>(Landroid/content/Context;ILcom/miui/applicationlock/utils/a;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0100

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/applicationlock/E;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/E;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v0, 0x7f0a0101

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/F;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/F;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private akM()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/G;

    invoke-direct {v3, p0}, Lcom/miui/applicationlock/G;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/H;

    invoke-direct {v3, p0}, Lcom/miui/applicationlock/H;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afo:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afo:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private akN()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afE()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/C;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/C;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/C;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private akO()V
    .locals 6

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "external_app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afm:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afm:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afJ(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afm:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/miui/applicationlock/utils/m;->afK(Ljava/lang/String;I)V

    new-instance v0, Lcom/miui/applicationlock/g;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mInflater:Landroid/view/LayoutInflater;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/g;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/content/Context;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afs:Lcom/miui/applicationlock/g;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/g;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mInflater:Landroid/view/LayoutInflater;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/applicationlock/g;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/content/Context;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afs:Lcom/miui/applicationlock/g;

    goto :goto_0
.end method

.method private akQ()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afg:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-static {p0, v2}, Lcom/miui/applicationlock/utils/m;->afF(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic akR(Lcom/miui/applicationlock/ChooseAppToLockActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afg:I

    return v0
.end method

.method static synthetic akS(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic akT(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    return-object v0
.end method

.method static synthetic akU(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afj:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic akV(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afl:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic akW(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic akX(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic akY(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    return-object v0
.end method

.method static synthetic ala(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic alb(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afs:Lcom/miui/applicationlock/g;

    return-object v0
.end method

.method static synthetic alc(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method static synthetic ald(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ale(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic alf(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic alg(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lmiui/security/SecurityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic alh(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSortedButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic ali(Lcom/miui/applicationlock/ChooseAppToLockActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afv:I

    return v0
.end method

.method static synthetic alj(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afw:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    return-object v0
.end method

.method static synthetic alk(Lcom/miui/applicationlock/ChooseAppToLockActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afg:I

    return p1
.end method

.method static synthetic all(Lcom/miui/applicationlock/ChooseAppToLockActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afh:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic alm(Lcom/miui/applicationlock/ChooseAppToLockActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afu:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic aln(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akK()V

    return-void
.end method

.method static synthetic alo(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akL()V

    return-void
.end method

.method static synthetic alp(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akM()V

    return-void
.end method

.method static synthetic alq(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akQ()V

    return-void
.end method

.method static synthetic alr(Lcom/miui/applicationlock/ChooseAppToLockActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Lcom/miui/applicationlock/utils/j;

    invoke-direct {v5}, Lcom/miui/applicationlock/utils/j;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Lcom/miui/applicationlock/utils/j;->aeP(Ljava/util/List;)V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adW()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v10, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/miui/applicationlock/utils/j;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afs:Lcom/miui/applicationlock/g;

    invoke-virtual {v0, v3, v10}, Lcom/miui/applicationlock/g;->akG(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public akP(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f0c0046

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afh:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afs:Lcom/miui/applicationlock/g;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lcom/miui/applicationlock/g;->akG(Ljava/util/List;Z)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-super {p0}, Lcom/miui/common/a/d;->finish()V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x1

    const v0, 0xf990c

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_1

    iput-boolean v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->finish()V

    goto :goto_0

    :cond_2
    const v0, 0xf995c

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_4

    iget v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afv:I

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/m;->afI(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x70

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300ce

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->language:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afv:I

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/utils/e;->aes(Z)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afh:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afr:Ljava/util/ArrayList;

    const v0, 0x7f0a010c

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afw:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akO()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afw:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afs:Lcom/miui/applicationlock/g;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afw:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    new-instance v1, Lcom/miui/applicationlock/B;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/B;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->onCustomizeActionBar(Landroid/app/ActionBar;)I

    :cond_2
    invoke-static {p0}, Lcom/miui/applicationlock/utils/a;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeB()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akN()V

    return-void

    :cond_3
    const-string/jumbo v1, "not_home_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    goto/16 :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/applicationlock/I;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/applicationlock/I;-><init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCustomizeActionBar(Landroid/app/ActionBar;)I
    .locals 3

    const/16 v0, 0x10

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSortedButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSortedButton:Landroid/widget/ImageView;

    const v1, 0x7f070798

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSortedButton:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->icon_settings_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSortedButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800015

    invoke-direct {v0, v2, v2, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSortedButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afh:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "locked_app_quantity1"

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akP(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afq:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afp:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afo:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afo:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->afi:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf990c

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state"

    iget-boolean v1, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->aft:Z

    :cond_0
    return-void
.end method

.method public startSearchMode(Lmiui/view/SearchActionMode$Callback;)V
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAppToLockActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    return-void
.end method
