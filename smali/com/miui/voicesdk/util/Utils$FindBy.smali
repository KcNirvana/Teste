.class public final enum Lcom/miui/voicesdk/util/Utils$FindBy;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FindBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/voicesdk/util/Utils$FindBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/voicesdk/util/Utils$FindBy;

.field public static final enum ID:Lcom/miui/voicesdk/util/Utils$FindBy;

.field public static final enum TEXT:Lcom/miui/voicesdk/util/Utils$FindBy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/voicesdk/util/Utils$FindBy;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/miui/voicesdk/util/Utils$FindBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/voicesdk/util/Utils$FindBy;->TEXT:Lcom/miui/voicesdk/util/Utils$FindBy;

    new-instance v0, Lcom/miui/voicesdk/util/Utils$FindBy;

    const-string/jumbo v1, "ID"

    invoke-direct {v0, v1, v3}, Lcom/miui/voicesdk/util/Utils$FindBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/voicesdk/util/Utils$FindBy;->ID:Lcom/miui/voicesdk/util/Utils$FindBy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/voicesdk/util/Utils$FindBy;

    sget-object v1, Lcom/miui/voicesdk/util/Utils$FindBy;->TEXT:Lcom/miui/voicesdk/util/Utils$FindBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/voicesdk/util/Utils$FindBy;->ID:Lcom/miui/voicesdk/util/Utils$FindBy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/voicesdk/util/Utils$FindBy;->$VALUES:[Lcom/miui/voicesdk/util/Utils$FindBy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/voicesdk/util/Utils$FindBy;
    .locals 1

    const-class v0, Lcom/miui/voicesdk/util/Utils$FindBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/util/Utils$FindBy;

    return-object v0
.end method

.method public static values()[Lcom/miui/voicesdk/util/Utils$FindBy;
    .locals 1

    sget-object v0, Lcom/miui/voicesdk/util/Utils$FindBy;->$VALUES:[Lcom/miui/voicesdk/util/Utils$FindBy;

    invoke-virtual {v0}, [Lcom/miui/voicesdk/util/Utils$FindBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/voicesdk/util/Utils$FindBy;

    return-object v0
.end method
