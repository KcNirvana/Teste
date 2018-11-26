.class public final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source ""


# static fields
.field private static final BASIC_CHARACTER_SET:[I

.field private static final CC_FIELD_FLAG:I = 0x1

.field private static final CC_IMPLICIT_DATA_HEADER:B = -0x4t

.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final CC_TYPE_FLAG:I = 0x2

.field private static final CC_VALID_608_ID:I = 0x4

.field private static final CC_VALID_FLAG:I = 0x4

.field private static final COLORS:[I

.field private static final COLUMN_INDICES:[I

.field private static final CTRL_BACKSPACE:B = 0x21t

.field private static final CTRL_CARRIAGE_RETURN:B = 0x2dt

.field private static final CTRL_DELETE_TO_END_OF_ROW:B = 0x24t

.field private static final CTRL_END_OF_CAPTION:B = 0x2ft

.field private static final CTRL_ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field private static final CTRL_ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field private static final CTRL_RESUME_CAPTION_LOADING:B = 0x20t

.field private static final CTRL_RESUME_DIRECT_CAPTIONING:B = 0x29t

.field private static final CTRL_ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field private static final CTRL_ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field private static final CTRL_ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final NTSC_CC_FIELD_1:I = 0x0

.field private static final NTSC_CC_FIELD_2:I = 0x1

.field private static final ROW_INDICES:[I

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:Ljava/util/ArrayList;

.field private cues:Ljava/util/List;

.field private currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

.field private lastCues:Ljava/util/List;

.field private final packetLength:I

.field private repeatableControlCc1:B

.field private repeatableControlCc2:B

.field private repeatableControlSet:Z

.field private final selectedField:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/16 v1, 0xb

    aput v1, v0, v3

    aput v4, v0, v4

    const/4 v1, 0x2

    aput v5, v0, v1

    const/16 v1, 0xc

    aput v1, v0, v5

    const/16 v1, 0xe

    aput v1, v0, v6

    aput v7, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x9

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v6, v0, v4

    const/16 v1, 0x8

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xc

    aput v1, v0, v5

    const/16 v1, 0x10

    aput v1, v0, v6

    const/16 v1, 0x14

    aput v1, v0, v7

    const/16 v1, 0x18

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x1c

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    const v1, -0xff0100

    aput v1, v0, v4

    const v1, -0xffff01

    const/4 v2, 0x2

    aput v1, v0, v2

    const v1, -0xff0001

    aput v1, v0, v5

    const/high16 v1, -0x10000

    aput v1, v0, v6

    const/16 v1, -0x100

    aput v1, v0, v7

    const v1, -0xff01

    const/4 v2, 0x6

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLORS:[I

    const/16 v0, 0x60

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v1, v0, v3

    const/16 v1, 0x21

    aput v1, v0, v4

    const/16 v1, 0x22

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x23

    aput v1, v0, v5

    const/16 v1, 0x24

    aput v1, v0, v6

    const/16 v1, 0x25

    aput v1, v0, v7

    const/16 v1, 0x26

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x27

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x28

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x29

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xe1

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x2b

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x2c

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x2d

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x2e

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x2f

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x30

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x31

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x32

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x33

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0x35

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0x36

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0x37

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0x3a

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0x3b

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x3c

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x3d

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0x3e

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0x3f

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x40

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v1, 0x41

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v1, 0x42

    const/16 v2, 0x22

    aput v1, v0, v2

    const/16 v1, 0x43

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v1, 0x44

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v1, 0x45

    const/16 v2, 0x25

    aput v1, v0, v2

    const/16 v1, 0x46

    const/16 v2, 0x26

    aput v1, v0, v2

    const/16 v1, 0x47

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v1, 0x48

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v1, 0x49

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v1, 0x4a

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v1, 0x4b

    const/16 v2, 0x2b

    aput v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, 0x2c

    aput v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, 0x2d

    aput v1, v0, v2

    const/16 v1, 0x4e

    const/16 v2, 0x2e

    aput v1, v0, v2

    const/16 v1, 0x4f

    const/16 v2, 0x2f

    aput v1, v0, v2

    const/16 v1, 0x50

    const/16 v2, 0x30

    aput v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, 0x31

    aput v1, v0, v2

    const/16 v1, 0x52

    const/16 v2, 0x32

    aput v1, v0, v2

    const/16 v1, 0x53

    const/16 v2, 0x33

    aput v1, v0, v2

    const/16 v1, 0x54

    const/16 v2, 0x34

    aput v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, 0x35

    aput v1, v0, v2

    const/16 v1, 0x56

    const/16 v2, 0x36

    aput v1, v0, v2

    const/16 v1, 0x57

    const/16 v2, 0x37

    aput v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0x38

    aput v1, v0, v2

    const/16 v1, 0x59

    const/16 v2, 0x39

    aput v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, 0x3a

    aput v1, v0, v2

    const/16 v1, 0x5b

    const/16 v2, 0x3b

    aput v1, v0, v2

    const/16 v1, 0xe9

    const/16 v2, 0x3c

    aput v1, v0, v2

    const/16 v1, 0x5d

    const/16 v2, 0x3d

    aput v1, v0, v2

    const/16 v1, 0xed

    const/16 v2, 0x3e

    aput v1, v0, v2

    const/16 v1, 0xf3

    const/16 v2, 0x3f

    aput v1, v0, v2

    const/16 v1, 0xfa

    const/16 v2, 0x40

    aput v1, v0, v2

    const/16 v1, 0x61

    const/16 v2, 0x41

    aput v1, v0, v2

    const/16 v1, 0x62

    const/16 v2, 0x42

    aput v1, v0, v2

    const/16 v1, 0x63

    const/16 v2, 0x43

    aput v1, v0, v2

    const/16 v1, 0x64

    const/16 v2, 0x44

    aput v1, v0, v2

    const/16 v1, 0x65

    const/16 v2, 0x45

    aput v1, v0, v2

    const/16 v1, 0x66

    const/16 v2, 0x46

    aput v1, v0, v2

    const/16 v1, 0x67

    const/16 v2, 0x47

    aput v1, v0, v2

    const/16 v1, 0x68

    const/16 v2, 0x48

    aput v1, v0, v2

    const/16 v1, 0x69

    const/16 v2, 0x49

    aput v1, v0, v2

    const/16 v1, 0x6a

    const/16 v2, 0x4a

    aput v1, v0, v2

    const/16 v1, 0x6b

    const/16 v2, 0x4b

    aput v1, v0, v2

    const/16 v1, 0x6c

    const/16 v2, 0x4c

    aput v1, v0, v2

    const/16 v1, 0x6d

    const/16 v2, 0x4d

    aput v1, v0, v2

    const/16 v1, 0x6e

    const/16 v2, 0x4e

    aput v1, v0, v2

    const/16 v1, 0x6f

    const/16 v2, 0x4f

    aput v1, v0, v2

    const/16 v1, 0x70

    const/16 v2, 0x50

    aput v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, 0x51

    aput v1, v0, v2

    const/16 v1, 0x72

    const/16 v2, 0x52

    aput v1, v0, v2

    const/16 v1, 0x73

    const/16 v2, 0x53

    aput v1, v0, v2

    const/16 v1, 0x74

    const/16 v2, 0x54

    aput v1, v0, v2

    const/16 v1, 0x75

    const/16 v2, 0x55

    aput v1, v0, v2

    const/16 v1, 0x76

    const/16 v2, 0x56

    aput v1, v0, v2

    const/16 v1, 0x77

    const/16 v2, 0x57

    aput v1, v0, v2

    const/16 v1, 0x78

    const/16 v2, 0x58

    aput v1, v0, v2

    const/16 v1, 0x79

    const/16 v2, 0x59

    aput v1, v0, v2

    const/16 v1, 0x7a

    const/16 v2, 0x5a

    aput v1, v0, v2

    const/16 v1, 0xe7

    const/16 v2, 0x5b

    aput v1, v0, v2

    const/16 v1, 0xf7

    const/16 v2, 0x5c

    aput v1, v0, v2

    const/16 v1, 0xd1

    const/16 v2, 0x5d

    aput v1, v0, v2

    const/16 v1, 0xf1

    const/16 v2, 0x5e

    aput v1, v0, v2

    const/16 v1, 0x25a0

    const/16 v2, 0x5f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v1, 0xae

    aput v1, v0, v3

    const/16 v1, 0xb0

    aput v1, v0, v4

    const/16 v1, 0xbd

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xbf

    aput v1, v0, v5

    const/16 v1, 0x2122

    aput v1, v0, v6

    const/16 v1, 0xa2

    aput v1, v0, v7

    const/16 v1, 0xa3

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x266a

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0xe0

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xe8

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xe2

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0xea

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0xee

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0xf4

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0xfb

    const/16 v2, 0xf

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/16 v1, 0xc1

    aput v1, v0, v3

    const/16 v1, 0xc9

    aput v1, v0, v4

    const/16 v1, 0xd3

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xda

    aput v1, v0, v5

    const/16 v1, 0xdc

    aput v1, v0, v6

    const/16 v1, 0xfc

    aput v1, v0, v7

    const/16 v1, 0x2018

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0xa1

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x2a

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x27

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x2014

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xa9

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x2120

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x2022

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x201c

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x201d

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0xc0

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0xc2

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0xc7

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0xc8

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0xca

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0xcb

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0xeb

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0xce

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0xcf

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0xef

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0xd4

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0xd9

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0xf9

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0xdb

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0xab

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0xbb

    const/16 v2, 0x1f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/16 v1, 0xc3

    aput v1, v0, v3

    const/16 v1, 0xe3

    aput v1, v0, v4

    const/16 v1, 0xcd

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xcc

    aput v1, v0, v5

    const/16 v1, 0xec

    aput v1, v0, v6

    const/16 v1, 0xd2

    aput v1, v0, v7

    const/16 v1, 0xf2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0xd5

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0xf5

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x7b

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x7d

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x5c

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x5e

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x5f

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x7c

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x7e

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0xc4

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0xe4

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0xd6

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0xf6

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0xdf

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0xa5

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0xa4

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0x2502

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0xc5

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0xe5

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0xd8

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0xf8

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x250c

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x2510

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0x2514

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0x2518

    const/16 v2, 0x1f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/4 v2, 0x4

    invoke-direct {v0, v3, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const-string/jumbo v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v0, v0, -0x20

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getExtendedEsFrChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private static getExtendedPtDeChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private static getSpecialChar(B)C
    .locals 2

    and-int/lit8 v0, p0, 0xf

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private handleCtrl(BB)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMidrowCtrlCode(BB)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isTabCtrlCode(BB)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    if-nez v1, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    int-to-byte v1, p1

    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    int-to-byte v1, p2

    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    goto :goto_0

    :cond_2
    iget-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne v1, p1, :cond_1

    iget-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne v1, p2, :cond_1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    return v3

    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMidrowCtrl(B)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handlePreambleAddressCode(BB)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v2, p2, -0x20

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setTab(I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_1
.end method

.method private handleMidrowCtrl(B)V
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit8 v0, p1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderline(Z)V

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    sget-object v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLORS:[I

    aget v0, v4, v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setMidrowStyle(Landroid/text/style/CharacterStyle;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setMidrowStyle(Landroid/text/style/CharacterStyle;I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setMidrowStyle(Landroid/text/style/CharacterStyle;I)V

    goto :goto_1
.end method

.method private handleMiscCode(B)V
    .locals 3

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    :pswitch_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    return-void

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    return-void

    :pswitch_6
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    return-void

    :cond_1
    return-void

    :pswitch_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_0

    :pswitch_a
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handlePreambleAddressCode(BB)V
    .locals 6

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 v3, p1, 0x7

    aget v2, v2, v3

    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    :goto_0
    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->getRow()I

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_2
    and-int/lit8 v0, p2, 0x1

    if-eq v0, v1, :cond_5

    :goto_3
    shr-int/lit8 v0, p2, 0x1

    and-int/lit8 v0, v0, 0xf

    if-le v0, v5, :cond_6

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    and-int/lit8 v0, v0, 0x7

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setIndent(I)V

    :goto_4
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v2, v1, :cond_4

    :cond_3
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setRow(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    goto :goto_3

    :cond_6
    if-eq v0, v5, :cond_7

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLORS:[I

    aget v0, v3, v0

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setPreambleStyle(Landroid/text/style/CharacterStyle;)V

    goto :goto_4
.end method

.method private static isMidrowCtrlCode(BB)Z
    .locals 2

    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMiscCode(BB)Z
    .locals 2

    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPreambleAddressCode(BB)Z
    .locals 2

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isRepeatable(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isTabCtrlCode(BB)Z
    .locals 2

    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/16 v0, 0x23

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetCueBuilders()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setCaptionMode(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method private setCaptionRowCount(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    return-void
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_e

    :goto_1
    return-void

    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    if-eq v4, v9, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    int-to-byte v4, v4

    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    and-int/lit8 v7, v4, 0x6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-eq v7, v3, :cond_6

    :cond_2
    iget v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-eq v7, v9, :cond_7

    :goto_3
    if-eqz v5, :cond_8

    :goto_4
    and-int/lit16 v2, v5, 0xf7

    const/16 v4, 0x11

    if-eq v2, v4, :cond_9

    :cond_3
    and-int/lit16 v2, v5, 0xf6

    const/16 v4, 0x12

    if-eq v2, v4, :cond_a

    :cond_4
    and-int/lit16 v2, v5, 0xe0

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getChar(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit16 v2, v6, 0xe0

    if-nez v2, :cond_d

    :goto_5
    move v2, v3

    goto :goto_0

    :cond_5
    const/4 v4, -0x4

    goto :goto_2

    :cond_6
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_0

    goto :goto_4

    :cond_9
    and-int/lit16 v2, v6, 0xf0

    const/16 v4, 0x30

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getSpecialChar(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    move v2, v3

    goto :goto_0

    :cond_a
    and-int/lit16 v2, v6, 0xe0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    move v2, v3

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    move v2, v3

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleCtrl(BB)Z

    move-result v0

    move v2, v3

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getChar(B)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_5

    :cond_e
    if-eqz v0, :cond_10

    :goto_6
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, v3, :cond_11

    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    goto/16 :goto_1

    :cond_10
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    goto :goto_6

    :cond_11
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto/16 :goto_1
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    iput-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Cea608Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
