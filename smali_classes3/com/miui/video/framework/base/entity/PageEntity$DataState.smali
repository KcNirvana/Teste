.class public final enum Lcom/miui/video/framework/base/entity/PageEntity$DataState;
.super Ljava/lang/Enum;
.source "PageEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/framework/base/entity/PageEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/framework/base/entity/PageEntity$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/framework/base/entity/PageEntity$DataState;

.field public static final enum DATA_EMPTY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

.field public static final enum DATA_END:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

.field public static final enum DATA_NORMAL:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

.field public static final enum DATA_RETRY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    const-string v1, "DATA_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/framework/base/entity/PageEntity$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_NORMAL:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    new-instance v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    const-string v1, "DATA_RETRY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/framework/base/entity/PageEntity$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_RETRY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    new-instance v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    const-string v1, "DATA_EMPTY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/framework/base/entity/PageEntity$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_EMPTY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    new-instance v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    const-string v1, "DATA_END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/framework/base/entity/PageEntity$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_END:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    sget-object v1, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_NORMAL:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_RETRY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_EMPTY:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->DATA_END:Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->$VALUES:[Lcom/miui/video/framework/base/entity/PageEntity$DataState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/framework/base/entity/PageEntity$DataState;
    .locals 1

    const-class v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/framework/base/entity/PageEntity$DataState;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/base/entity/PageEntity$DataState;->$VALUES:[Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    invoke-virtual {v0}, [Lcom/miui/video/framework/base/entity/PageEntity$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/framework/base/entity/PageEntity$DataState;

    return-object v0
.end method
