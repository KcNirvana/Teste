.class public Lcom/miui/common/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aCA:Ljava/lang/CharSequence;

.field public static final aCB:Ljava/lang/CharSequence;

.field public static final aCz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    :goto_0
    sput-object v0, Lcom/miui/common/c;->aCz:Ljava/lang/String;

    const-string/jumbo v0, "root"

    sput-object v0, Lcom/miui/common/c;->aCA:Ljava/lang/CharSequence;

    const-string/jumbo v0, "Interactive Shell"

    sput-object v0, Lcom/miui/common/c;->aCB:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const-string/jumbo v0, "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
