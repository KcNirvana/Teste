.class public final enum Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;
.super Ljava/lang/Enum;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/base/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

.field public static final enum FRAGMENT_DETACH:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

.field public static final enum FRAGMENT_HIDE:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

.field public static final enum FRAGMENT_REMOVE:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

.field public static final enum FRAGMENT_REMOVE_ALL:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

.field public static final enum FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const-string v1, "FRAGMENT_REMOVE_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_REMOVE_ALL:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    new-instance v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const-string v1, "FRAGMENT_SHOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    new-instance v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const-string v1, "FRAGMENT_HIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_HIDE:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    new-instance v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const-string v1, "FRAGMENT_REMOVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_REMOVE:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    new-instance v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const-string v1, "FRAGMENT_DETACH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_DETACH:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    sget-object v1, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_REMOVE_ALL:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_HIDE:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_REMOVE:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->FRAGMENT_DETACH:Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->$VALUES:[Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;
    .locals 1

    const-class v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->$VALUES:[Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    invoke-virtual {v0}, [Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/common/library/base/BaseFragmentActivity$FragmentType;

    return-object v0
.end method
