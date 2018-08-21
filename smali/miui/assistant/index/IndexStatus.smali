.class public Lmiui/assistant/index/IndexStatus;
.super Ljava/lang/Object;
.source "IndexStatus.java"


# static fields
.field public static final CODE_GENERIC_ERROR:I = 0x64

.field public static final CODE_SUCCESS:I


# instance fields
.field private mCode:I

.field private mDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/assistant/index/IndexStatus;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/assistant/index/IndexStatus;->mCode:I

    iput-object p2, p0, Lmiui/assistant/index/IndexStatus;->mDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lmiui/assistant/index/IndexStatus;->mCode:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/IndexStatus;->mDesc:Ljava/lang/String;

    return-object v0
.end method
