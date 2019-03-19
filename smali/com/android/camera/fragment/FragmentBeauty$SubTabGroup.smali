.class final enum Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;
.super Ljava/lang/Enum;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SubTabGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

.field public static final enum BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

.field public static final enum BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

.field public static final enum LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-string/jumbo v1, "LEGACY"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-string/jumbo v1, "BEAUTY"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-string/jumbo v1, "BEAUTY3D"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->$VALUES:[Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;
    .locals 1

    const-class v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->$VALUES:[Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    return-object v0
.end method
