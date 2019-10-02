.class synthetic Lcom/kaltura/playkit/PKDrmParams$2;
.super Ljava/lang/Object;
.source "PKDrmParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PKDrmParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->values()[Lcom/kaltura/playkit/PKDrmParams$Scheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    :try_start_0
    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->FairPlay:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/kaltura/playkit/PKDrmParams$2;->$SwitchMap$com$kaltura$playkit$PKDrmParams$Scheme:[I

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->Unknown:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams$Scheme;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
